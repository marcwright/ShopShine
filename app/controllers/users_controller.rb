class UsersController < ApplicationController
  # before_action only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  def profile
    @user = User.find(params[:id])
  end

  def show_json

    render json: CategorySize.find(params[:categorysizeid]).category.code
    
  end


  # def resultslist
  def results

    current_user = User.first
    @dropdowncategories = Category.find_by_sql("SELECT csu.category_size_id, c.name FROM category_sizes_users csu INNER JOIN category_sizes cs on csu.category_size_id = cs.id INNER JOIN categories c ON cs.category_id = c.id WHERE csu.user_id = " + current_user.id.to_s)

    if params[:id]
    @shopresult = CategorySize.query_shopify(params[:id])
    end

     # @msg = { "success" => "true", "message" => "hello"}
 
    # respond_to do |format|
    #   format.html
    #   format.json { render json: @shopresult }


    # @user = User.find(params[:id])
    # @category_sizes = CategorySize.all
    # @results = CategorySize.query_shopify(size_params)
  end

  # GET /users/new
  def new
    @user = User.new
    @categories = Category.all
  end

  # GET /users/1/edit
  def edit
     @user = User.find(params[:id])
     @categories = Category.all
     redirect_to user_url
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
def update
    @dude = 0
    @user.update(user_params)

    CategorySize.all.each do |cs|
      is_member = false # Start by pessimistically expecting we're not a member
      params.each do |k, v|
        if k.index("catsize") == 0  # Make sure it's a group checkbox
          if cs.category_id.to_s == k[7..k.length-1] && cs.size_id.to_s == v  # Test this group's ID against the checkbox name
            is_member = true  # Got a match!
          end
        end
      end
      # Do we need to remove them?
        if(@user.category_sizes.include?(cs) && ! is_member)
          @user.category_sizes.delete(cs)
        end
        # Need to add them?
        if(! @user.category_sizes.include?(cs) && is_member)
          @user.category_sizes << cs
      end
    end
    #Head back into the index view
    
    redirect_to user_url
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :hashed_password, :salt)
    end

      #  def size_params
      # params.permit()
      # end
end

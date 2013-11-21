class CategorySizesController < ApplicationController
  before_action :set_category_size, only: [:show, :edit, :update, :destroy]

  # GET /category_sizes
  # GET /category_sizes.json
  def index
    @category_sizes = CategorySize.all
  end

  # GET /category_sizes/1
  # GET /category_sizes/1.json
  def show
    # @user = User.find(params[:id])
    @category_sizes = CategorySize.all
    # CategorySize.query_shopify(size_params)
  end

  # GET /category_sizes/new
  def new
    @category_size = CategorySize.new
  end

  # GET /category_sizes/1/edit
  def edit
  end

  # POST /category_sizes
  # POST /category_sizes.json
  def create
    @category_size = CategorySize.new(category_size_params)

    respond_to do |format|
      if @category_size.save
        format.html { redirect_to @category_size, notice: 'Category size was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category_size }
      else
        format.html { render action: 'new' }
        format.json { render json: @category_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_sizes/1
  # PATCH/PUT /category_sizes/1.json
  def update
    respond_to do |format|
      if @category_size.update(category_size_params)
        format.html { redirect_to @category_size, notice: 'Category size was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @category_size.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_sizes/1
  # DELETE /category_sizes/1.json
  def destroy
    @category_size.destroy
    respond_to do |format|
      format.html { redirect_to category_sizes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_size
      @category_size = CategorySize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_size_params
      params.require(:category_size).permit(:category_id, :size_id)
    end
end

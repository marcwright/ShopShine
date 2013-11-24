class API::CategorySizesController < ApplicationController
	def index
    @category_sizes = CategorySize.all
    respond_to do |format|
      format.json { render :json => @category_sizes }
    end
  end

end
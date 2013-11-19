class CategorySizeUser < ActiveRecord::Base
  belongs_to :category_size
  belongs_to :user
end

class UserCategorySize < ActiveRecord::Base
  belongs_to :user
  belongs_to :category_size
end

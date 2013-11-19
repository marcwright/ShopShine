class CategorySize < ActiveRecord::Base
  belongs_to :category
  belongs_to :size
  # has_many :users, through: :user_category_sizes, source: :user
  has_and_belongs_to_many :users

end

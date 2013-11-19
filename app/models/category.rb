class Category < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Category',
  	foreign_key: 'category_id'
  has_many :sub_categories, :class_name => 'Category',
    foreign_key: 'category_id'
  has_many :sizes, through: :category_sizes, source: :size
  has_many :category_sizes
end

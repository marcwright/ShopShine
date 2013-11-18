class Category < ActiveRecord::Base
  belongs_to :parent, :class_name => 'Category',
  	foreign_key: 'category_id'
  has_many :sub_categories, :class_name => 'Category',
    foreign_key: 'category_id'
  has_many :sizes, through: :category_size, source: :category
end

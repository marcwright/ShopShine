class Size < ActiveRecord::Base
	has_many :categories, through: :category_sizes, source: :category
	has_many :category_sizes
end

class Size < ActiveRecord::Base
	has_many :categories, through: :category_size, source: :size
end

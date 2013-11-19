class User < ActiveRecord::Base
	has_many :category_sizes, through: :user_category_sizes, source: :category_size
end

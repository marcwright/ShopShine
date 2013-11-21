class CategorySize < ActiveRecord::Base
  belongs_to :category
  belongs_to :size
  # has_many :users, through: :user_category_sizes, source: :user
  has_and_belongs_to_many :users


	def self.query_shopify(size_param)

		#constants 
		# party = HTTParty.get
		query = "http://api.shopstyle.com/api/v2/products?pid=uid6596-24043686-75"
		# categorycode = "mens-jeans"
		# sizecode = size_param[:s]

		categorycode = CategorySize.find(size_param).category.code
		sizecode = CategorySize.find(size_param).size.code

		HTTParty.get(query+"&fts=#{categorycode}&fl=#{sizecode}&limit=100") 

	end



end

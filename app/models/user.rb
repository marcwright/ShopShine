
	require 'bcrypt'

class User < ActiveRecord::Base
	# has_many :category_sizes, through: :user_category_sizes, source: :category_size
	has_and_belongs_to_many :category_sizes



	attr_accessor :password, :password_confirmation

	# field :email, type: String
	# field :salt, type: String
	# field :hashed_password, type: String

	# has_many :triggers
	# embeds_many :triggers

before_save :hash_password
# before_save :hash_password
validates :email, presence: true
validates :email, uniqueness: { case_sensitive: false}
# validates :password, confirmation: true
validates :password, confirmation: true

# def authenticate(hash_password)
def authenticate(guesspassword)
	# self.hash_password ==
	self.hashed_password ==
	 # BCrypt::Engine.hash_secret(password, self.salt)
	 BCrypt::Engine.hash_secret(guesspassword, self.salt)
end

private

# def hash_password
def hash_password
	if password.present?
		self.salt = BCrypt::Engine.generate_salt
		self.hashed_password =
			# BCrypt::Engine.hash_secret(password, self.salt)
			BCrypt::Engine.hash_secret(self.password, self.salt)
			password = password_confirmation = nil
		end
end




end

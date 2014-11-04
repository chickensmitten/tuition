class User < ActiveRecord::Base

has_many :posts
has_many :user_categories
has_many :categories, through: :user_categories

has_secure_password validations: false

end
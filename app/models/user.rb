class User < ActiveRecord::Base

  has_many :posts
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :centres
  has_many :programmes, through: :centres

  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 6}

end
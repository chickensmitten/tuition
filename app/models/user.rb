class User < ActiveRecord::Base

  has_many :posts
  has_many :user_topics
  has_many :topics, through: :user_topics  
  has_many :user_programmes
  has_many :programmes, through: :user_programmes
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :user_timeslots
  has_many :timeslots, through: :user_timeslots  

  has_secure_password validations: false

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 6}

end
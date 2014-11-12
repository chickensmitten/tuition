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
  has_many :user_intakes
  has_many :intakes, through: :user_intakes  
  has_many :user_klasses
  has_many :klass, through: :user_klasses      

  has_secure_password validations: false

  accepts_nested_attributes_for :posts
  accepts_nested_attributes_for :user_topics
  accepts_nested_attributes_for :user_programmes
  accepts_nested_attributes_for :user_categories
  accepts_nested_attributes_for :user_timeslots
  accepts_nested_attributes_for :user_intakes
  accepts_nested_attributes_for :user_klasses

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true, on: :create, length: {minimum: 6}

end
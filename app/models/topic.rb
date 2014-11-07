class Topic < ActiveRecord::Base
  belongs_to :programme
  has_many :user_topics
  has_many :users, through: :user_topics

  validates :number, presence: true
  validates :name, presence: true
end
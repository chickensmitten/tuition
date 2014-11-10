class Topic < ActiveRecord::Base
  belongs_to :programme
  has_many :user_topics
  has_many :users, through: :user_topics
  has_many :topic_intakes
  has_many :intakes, through: :topic_intakes

  validates :number, presence: true
  validates :name, presence: true
end
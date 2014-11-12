class Topic < ActiveRecord::Base
  belongs_to :programme
  has_many :user_topics
  has_many :users, through: :user_topics
  has_many :topic_intakes
  has_many :intakes, through: :topic_intakes
  has_many :topic_timeslots
  has_many :timeslots, through: :topic_timeslots
  has_many :klass_topics
  has_many :klasses, through: :klass_topics

  accepts_nested_attributes_for :user_topics
  accepts_nested_attributes_for :topic_intakes
  accepts_nested_attributes_for :topic_timeslots
  accepts_nested_attributes_for :klass_topics

  validates :number, presence: true
  validates :name, presence: true
end
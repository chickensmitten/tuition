class Intake < ActiveRecord::Base
  has_many :klasses
  has_many :programme_intakes
  has_many :programmes, through: :programme_intakes
  has_many :topic_intakes
  has_many :topics, through: :topic_intakes
  has_many :user_intakes
  has_many :users, through: :user_intakes
  has_many :centre_intakes
  has_many :centres, through: :centre_intakes

  accepts_nested_attributes_for :klasses, :programmes, :topics, :users, :centres
end
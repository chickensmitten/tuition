class Programme < ActiveRecord::Base

  has_many :topics
  has_many :user_programmes
  has_many :user, through: :user_programmes
  has_many :programme_timeslots
  has_many :programme, through: :programme_timeslots

end
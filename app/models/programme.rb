class Programme < ActiveRecord::Base

  has_many :topics
  has_many :user_programmes
  has_many :users, through: :user_programmes
  has_many :programme_timeslots
  has_many :timeslots, through: :programme_timeslots
  has_many :programme_intakes
  has_many :intakes, through: :programme_intakes  

end
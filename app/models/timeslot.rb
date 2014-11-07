class Timeslot < ActiveRecord::Base
  has_many :programme_timeslots
  has_many :programmes, through: :programme_timeslots
  has_many :room_timeslots
  has_many :rooms, through: :room_timeslots
  has_many :user_timeslots
  has_many :users, through: :user_timeslots
end
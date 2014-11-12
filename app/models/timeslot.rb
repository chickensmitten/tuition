class Timeslot < ActiveRecord::Base
  has_many :programme_timeslots
  has_many :programmes, through: :programme_timeslots
  has_many :room_timeslots
  has_many :rooms, through: :room_timeslots
  has_many :user_timeslots
  has_many :users, through: :user_timeslots
  has_many :topic_timeslots
  has_many :topics, through: :topic_timeslots
  has_many :centre_timeslots
  has_many :centres, through: :centre_timeslots  
  has_many :klass_timeslots
  has_many :klass, through: :klass_timeslots      

  accepts_nested_attributes_for :programme_timeslots 
  accepts_nested_attributes_for :room_timeslots  
  accepts_nested_attributes_for :user_timeslots 
  accepts_nested_attributes_for :topic_timeslots 
  accepts_nested_attributes_for :centre_timeslots  
  accepts_nested_attributes_for :klass_timeslots  
end
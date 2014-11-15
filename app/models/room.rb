class Room < ActiveRecord::Base
  belongs_to :centre
  has_many :room_timeslots
  has_many :timeslots, through: :room_timeslots  
  has_many :klass_rooms
  has_many :klasses, through: :klass_rooms  

  accepts_nested_attributes_for :centre 
  accepts_nested_attributes_for :room_timeslots
  accepts_nested_attributes_for :klass_rooms  
end
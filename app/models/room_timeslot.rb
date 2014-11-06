class RoomTimeslot < ActiveRecord::Base
  belongs_to :timeslot
  belongs_to :room
end
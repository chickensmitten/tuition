class ProgrammeTimeslot < ActiveRecord::Base
  belongs_to :timeslot
  belongs_to :programme
end
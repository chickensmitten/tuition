class ProgrammeTimeslot < ActiveRecord::Base
  belongs_to :timeslot
  belongs_to :programme

  accepts_nested_attributes_for :timeslot
  accepts_nested_attributes_for :programme
end
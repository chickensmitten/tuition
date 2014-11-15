class CentreTimeslot < ActiveRecord::Base
  belongs_to :timeslot
  belongs_to :centre
end
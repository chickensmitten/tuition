class UserTimeslot < ActiveRecord::Base
  belongs_to :timeslot
  belongs_to :user
end
class UserIntake < ActiveRecord::Base
  belongs_to :intake
  belongs_to :user
end
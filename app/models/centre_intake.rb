class CentreIntake < ActiveRecord::Base
  belongs_to :intake
  belongs_to :centre
end
class ProgrammeIntake < ActiveRecord::Base
  belongs_to :intake
  belongs_to :programme
end
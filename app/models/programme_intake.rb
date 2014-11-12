class ProgrammeIntake < ActiveRecord::Base
  belongs_to :intake
  belongs_to :programme

  accepts_nested_attributes_for :intake
  accepts_nested_attributes_for :programme 
end
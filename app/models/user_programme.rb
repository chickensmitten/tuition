class UserProgramme < ActiveRecord::Base
  belongs_to :programme
  belongs_to :user
end
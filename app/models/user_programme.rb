class UserProgramme < ActiveRecord::Base
  belongs_to :programme
  belongs_to :user

  accepts_nested_attributes_for :programme
  accepts_nested_attributes_for :user
end
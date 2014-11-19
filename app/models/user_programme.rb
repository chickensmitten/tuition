class UserProgramme < ActiveRecord::Base
  belongs_to :programme
  belongs_to :user

  accepts_nested_attributes_for :programme, :reject_if => :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :user, :reject_if => :all_blank, allow_destroy: :true
end
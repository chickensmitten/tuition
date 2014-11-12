class UserTopic < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user

  accepts_nested_attributes_for :topic
  accepts_nested_attributes_for :user
end
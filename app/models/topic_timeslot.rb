class TopicTimeslot < ActiveRecord::Base
  belongs_to :timeslot
  belongs_to :topic

  accepts_nested_attributes_for :timeslot
  accepts_nested_attributes_for :topic
end
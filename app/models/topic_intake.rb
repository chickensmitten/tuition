class TopicIntake < ActiveRecord::Base
  belongs_to :intake
  belongs_to :topic
end
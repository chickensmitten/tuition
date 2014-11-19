class Programme < ActiveRecord::Base

  has_many :topics
  has_many :user_programmes
  has_many :users, through: :user_programmes
  has_many :programme_timeslots
  has_many :timeslots, through: :programme_timeslots
  has_many :programme_intakes
  has_many :intakes, through: :programme_intakes  
  has_many :klass_programmes
  has_many :klasses, through: :klass_programmes   

  accepts_nested_attributes_for :topics
  accepts_nested_attributes_for :programme_timeslots
  accepts_nested_attributes_for :programme_intakes
  accepts_nested_attributes_for :klass_programmes  
  accepts_nested_attributes_for :users, :reject_if => :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :user_programmes, :reject_if => :all_blank, allow_destroy: :true      
end
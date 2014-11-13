class Klass < ActiveRecord::Base

  belongs_to :intake
  has_many :user_klasses
  has_many :users, through: :user_klasses
  has_many :klass_programmes
  has_many :programmes, through: :klass_programmes
  has_many :klass_timeslots
  has_many :timeslots, through: :klass_timeslots  
  has_many :klass_centres
  has_many :centres, through: :klass_centres
  has_many :klass_rooms
  has_many :rooms, through: :klass_rooms  
  has_many :klass_topics
  has_many :topics, through: :klass_topics
  has_many :klass_dates
  has_many :dates, through: :klass_dates  

  accepts_nested_attributes_for :timeslots, :reject_if => :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :klass_timeslots, :reject_if => :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :topics, :reject_if => :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :klass_topics, :reject_if => :all_blank, allow_destroy: :true  
  accepts_nested_attributes_for :user_klasses
  accepts_nested_attributes_for :klass_programmes
  accepts_nested_attributes_for :klass_centres
  accepts_nested_attributes_for :klass_rooms    
  accepts_nested_attributes_for :klass_dates
end
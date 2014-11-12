class Centre < ActiveRecord::Base
  belongs_to :academy
  has_many :rooms
  has_many :centre_intakes
  has_many :intakes, through: :centre_intakes
  has_many :centre_timeslots
  has_many :timeslots, through: :centre_timeslots  
  has_many :klass_centres
  has_many :klasses, through: :klass_centres  

  accepts_nested_attributes_for :rooms, :intakes, :timeslots, :klasses
end
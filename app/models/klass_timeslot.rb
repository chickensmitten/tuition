class KlassTimeslot < ActiveRecord::Base
  belongs_to :timeslot
  belongs_to :klass

  accepts_nested_attributes_for :timeslot
  accepts_nested_attributes_for :klass  
end
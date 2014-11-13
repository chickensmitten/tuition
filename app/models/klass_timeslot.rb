class KlassTimeslot < ActiveRecord::Base
  belongs_to :timeslot
  belongs_to :klass

  accepts_nested_attributes_for :timeslot, :reject_if => :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :klass, :reject_if => :all_blank, allow_destroy: :true 
end
class KlassRoom < ActiveRecord::Base
  belongs_to :room
  belongs_to :klass

  accepts_nested_attributes_for :room
  accepts_nested_attributes_for :klass  

end
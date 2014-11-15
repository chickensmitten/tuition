class KlassProgramme < ActiveRecord::Base
  belongs_to :klass
  belongs_to :programme

  accepts_nested_attributes_for :klass
  accepts_nested_attributes_for :programme  
end
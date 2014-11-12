class KlassTopic < ActiveRecord::Base
  belongs_to :topic
  belongs_to :klass

  accepts_nested_attributes_for :topic
  accepts_nested_attributes_for :klass      
end
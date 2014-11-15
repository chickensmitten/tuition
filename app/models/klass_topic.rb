class KlassTopic < ActiveRecord::Base
  belongs_to :topic
  belongs_to :klass

  accepts_nested_attributes_for :topic, :reject_if => :all_blank, allow_destroy: :true
  accepts_nested_attributes_for :klass, :reject_if => :all_blank, allow_destroy: :true 
end
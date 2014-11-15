class Academy < ActiveRecord::Base
  belongs_to :user
  has_many :centres

  accepts_nested_attributes_for :centres
end
class Centre < ActiveRecord::Base
  belongs_to :academy
  has_many :rooms
  has_many :centre_intakes
  has_many :intakes, through: :centre_intakes  
end
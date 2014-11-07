class Centre < ActiveRecord::Base
  belongs_to :academy
  has_many :rooms
end
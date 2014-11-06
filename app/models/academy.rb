class Academy < ActiveRecord::Base
  belongs_to :user
  has_many :centres
end
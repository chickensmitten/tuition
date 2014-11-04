class Programme < ActiveRecord::Base

has_many :centres
has_many :users, through: :centres

end
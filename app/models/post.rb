class Post < ActiveRecord::Base

belongs_to :user

validates :title, presence: true, length: {minimum: 5}
validates :description, presence: true
validates :url, presence: true, uniqueness: true

end
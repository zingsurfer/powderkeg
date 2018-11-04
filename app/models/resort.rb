class Resort < ApplicationRecord
  validates_presence_of :title
  has_many :snowcasts
  geocoded_by :address
  after_validation :geocode
end

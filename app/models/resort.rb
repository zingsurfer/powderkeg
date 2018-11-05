class Resort < ApplicationRecord
  geocoded_by :address
  before_validation :geocode
  validates_presence_of :name
  validates_presence_of :latitude
  validates_presence_of :longitude
end

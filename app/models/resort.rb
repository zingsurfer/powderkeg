class Resort < ApplicationRecord
  validates_presence_of :title
  geocoded_by :address
  after_validation :geocode
end

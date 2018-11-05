class Resort < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: -> { obj.address.present? and obj.latitude.nil? || obj.longitude.nil? }
end

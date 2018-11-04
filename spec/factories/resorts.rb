FactoryBot.define do
  factory :resort do
    title { "Crested Butte" }
    address { "12 Snowmass Rd, Crested Butte, CO 81225" }
    latitude { 38.8833298 }
    longitude { -106.939496242 }
    visited_by { "MyString"}
  end
end

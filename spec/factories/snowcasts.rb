FactoryBot.define do
  factory :snowcast do
    apparent_temp { 1.5 }
    apparent_temp_max { 1.5 }
    apparent_temp_max_time { "2018-11-03 18:22:03" }
    cloud_cover { 1.5 }
    precip_accumulation { 1.5 }
    precip_intensity_max { 1.5 }
    precip_intensity_max_time { "2018-11-03 18:22:03" }
    precip_probability { 1.5 }
    precip_type { "MyString" }
    visibility { 1.5 }
    temp_max { 1.5 }
    temp_max_time { "2018-11-03 18:22:03" }
    wind_gust { 1.5 }
    wind_gust_time { "2018-11-03 18:22:03" }
    wind_speed { 1.5 }
    resort { create(:resort) }
  end
end

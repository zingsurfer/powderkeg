require 'rails_helper'

describe 'GET /api/v1/snowcast?location=name' do
  it 'sends the snowcast for that location' do
    resort = create(:resort)

    get "/api/v1/snowcast?location=#{resort.name}"

    snowcast = JSON.parse(response.body)
    
    expect(response).to be_successful
    expect(snowcast).to have_key("data")
    expect(snowcast["data"]).to have_key("id")
    expect(snowcast["data"]).to have_key("type")
    expect(snowcast["data"]).to have_key("attributes")
    expect(snowcast["data"]).to have_key("relationships")
    expect(snowcast["data"]["attributes"]).to have_key("feel_temp")
    expect(snowcast["data"]["attributes"]).to have_key("resort_name")
    expect(snowcast["data"]["attributes"]).to have_key("snow_chance")
    expect(snowcast["data"]["relationships"]).to have_key("resort")
    expect(snowcast["data"]["relationships"]["resort"]).to have_key("data")
    expect(snowcast["data"]["relationships"]["resort"]["data"]).to have_key("id")
    expect(snowcast["data"]["relationships"]["resort"]["data"]).to have_key("type")
  end
end

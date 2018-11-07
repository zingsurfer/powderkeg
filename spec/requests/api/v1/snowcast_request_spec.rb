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
    expect(snowcast["data"]["attributes"]).to have_key("resort_name")
    expect(snowcast["data"]["attributes"]).to have_key("peak")
    expect(snowcast["data"]["attributes"]).to have_key("mid")
    expect(snowcast["data"]["attributes"]).to have_key("base")
    expect(snowcast["data"]["attributes"]["peak"]).to have_key("max_temp")
    expect(snowcast["data"]["attributes"]["mid"]).to have_key("max_temp")
    expect(snowcast["data"]["attributes"]["base"]).to have_key("max_temp")
    expect(snowcast["data"]["attributes"]["overall"]).to have_key("summary")
    expect(snowcast["data"]["attributes"]["overall"]).to have_key("wind_speed")
    expect(snowcast["data"]["attributes"]["overall"]).to have_key("visibility")
    expect(snowcast["data"]["attributes"]["overall"]).to have_key("cloud_cover")
    expect(snowcast["data"]["attributes"]["overall"]["precip"]).to have_key("precip_probability")
    expect(snowcast["data"]["attributes"]["overall"]["precip"]).to have_key("precip_type")
    expect(snowcast["data"]["attributes"]["overall"]["precip"]).to have_key("snow_probability")
    expect(snowcast["data"]["attributes"]["overall"]["precip"]).to have_key("snow_accumulation")
    expect(snowcast["data"]["relationships"]).to have_key("resort")
    expect(snowcast["data"]["relationships"]["resort"]).to have_key("data")
    expect(snowcast["data"]["relationships"]["resort"]["data"]).to have_key("id")
    expect(snowcast["data"]["relationships"]["resort"]["data"]).to have_key("type")
    expect(response.header).to have_key("Accept")
    expect(response.header).to have_key("Content-Type")
    expect(response.header["Accept"]).to eq("application/json")
    expect(response.header["Content-Type"]).to eq("application/json")
  end
end

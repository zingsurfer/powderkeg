require 'rails_helper'

describe 'GET /api/v1/images?query=search_params' do
  it 'sends a random image' do
    search_params = "ski,snowboard"

    get "/api/v1/images?query=#{search_params}"

    image = JSON.parse(response.body)

    expect(response).to be_successful
    expect(image).to have_key("data")
    expect(image["data"]).to have_key("id")
    expect(image["data"]).to have_key("type")
    expect(image["data"]).to have_key("attributes")
    expect(image["data"]["attributes"]).to have_key("sizes")
    expect(image["data"]["attributes"]["sizes"]).to have_key("thumb_size")
    expect(image["data"]["attributes"]["sizes"]).to have_key("small_size")
    expect(image["data"]["attributes"]["sizes"]).to have_key("regular_size")
    expect(image["data"]["attributes"]["sizes"]).to have_key("full_size")
    expect(image["data"]["attributes"]).to have_key("links")
    expect(image["data"]["attributes"]["links"]).to have_key("artist_referral_link")
    expect(image["data"]["attributes"]["links"]).to have_key("unsplash_link")
    expect(response.header).to have_key("Accept")
    expect(response.header).to have_key("Content-Type")
    expect(response.header["Accept"]).to eq("application/json")
    expect(response.header["Content-Type"]).to eq("application/json")
  end
end

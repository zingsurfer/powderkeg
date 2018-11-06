require 'rails_helper'

describe 'GET /api/v1/images?query=search_params' do
  it 'sends a random image' do
    search_params = "ski,snowboard"
    get "/api/v1/images?query=#{search_params}"

    expect(response).to be_successful
  end
end

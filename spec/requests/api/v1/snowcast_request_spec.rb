require 'rails_helper'

describe 'GET /api/v1/snowcast?location=name' do
  it 'sends the snowcast for that location' do
    resort = create(:resort)

    get "/api/v1/snowcast?location=#{resort.name}"

    snowcast = JSON.parse(response.body)
    expect(response).to be_successful
  end
end

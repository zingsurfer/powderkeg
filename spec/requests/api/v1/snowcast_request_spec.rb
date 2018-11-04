require 'rails_helper'

describe 'Snowcast API' do
  it 'returns a snowcast' do
    resort = create(:resort)

    get "/api/v1/snowcast?location=#{resort.title}"

    snowcast = JSON.parse(response.body)

    expect(response).to be_successful
    expect(snowcast).to have_key("feel_temp")
  end
end

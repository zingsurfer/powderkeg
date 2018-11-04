require 'rails_helper'

describe 'Snowcast API' do
  it 'returns a snowcast' do
    resort = create(:resort)
    create(:snowcast, id: 1, resort_id: resort.id)

    get "/api/v1/snowcast?location=#{resort.title}"

    snowcast = JSON.parse(response.body)
    expect(response).to be_successful
    expect(snowcast.id).to eq(1)
  end
end

require 'rails_helper'

describe 'Snowcast API' do
  it 'returns a snowcast' do
    resort = create(:resort)
    snowcast = create(:snowcast, resort_id: resort.id)

    get "/api/v1/snowcast?location=#{resort.title}"

    expect(response).to be_successful
  end
end

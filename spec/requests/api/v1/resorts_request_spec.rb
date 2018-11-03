require 'rails_helper'

describe 'Resorts API' do
  it 'sends a list of resorts' do
    create_list(:resort, 3)
    get '/api/v1/resorts'
    resorts = JSON.parse(response.body)
    expect(response).to be_successful
    expect(resorts.count).to eq(3)
  end
end

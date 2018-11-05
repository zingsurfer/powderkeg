require 'rails_helper'

describe 'POST /api/v1/users' do
  it 'sends the user an api_key' do
    post "/api/v1/users"
    
    expect(response).to be_successful
  end
end
# POST /api/v1/users
# Content-Type: application/json
# Accept: application/json
#
# {
#   "email": "whatever@example.com",
#   "password": "password"
#   "password_confirmation": "password"
# }
# Response:
#
# status: 201
# body:
#
# {
#   "api_key": "jgn983hy48thw9begh98h4539h4",
# }

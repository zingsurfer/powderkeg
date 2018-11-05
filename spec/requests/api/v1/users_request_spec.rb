require 'rails_helper'

describe 'POST /api/v1/users' do
  it 'sends the user an api_key' do
    user_params = { email: "Leia@email.com", password: "Han Solo", password_confirmation: "Han Solo" }
    post "/api/v1/users", params: { user: user_params }
    user = User.last

    expect(response).to be_successful
    expect(user.email).to eq(user_params[:email])
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

require 'rails_helper'

describe 'POST /api/v1/sessions' do
  it 'returns the users api_key' do
    user_params = { name: "Leia", email: "Leia@email.com", password: "Han Solo", password_confirmation: "Han Solo" }
    post "/api/v1/users", params: { user: user_params }
    user = User.last

    user_login_params = { email: user.email, password: user.password }
    post "/api/v1/sessions", params: user_login_params

    expect(response).to be_successful
  end
end
# POST /api/v1/sessions
# Content-Type: application/json
# Accept: application/json
#
# {
#   "email": "whatever@example.com",
#   "password": "password"
# }
# Response:
#
# status: 200
# body:
#
# {
#   "api_key": "jgn983hy48thw9begh98h4539h4",
# }

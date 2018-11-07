require 'rails_helper'

describe 'POST /api/v1/sessions' do
  it 'valid login returns the users api_key' do
    user_params = { name: "Leia", email: "Leia@email.com", password: "Han Solo", password_confirmation: "Han Solo" }
    post "/api/v1/users", params: { user: user_params }

    user = User.last
    user_login_params = { email: user.email, password: "Han Solo" }
    post "/api/v1/sessions", params: user_login_params

    valid_login_response = JSON.parse(response.body)

    expect(response).to be_successful
    expect(response).to have_http_status(200)
    expect(valid_login_response).to have_key("api_key")
    expect(valid_login_response).to have_key("message")
    expect(valid_login_response["message"]).to eq("Successfully logged in.")
    expect(response.header).to have_key("Accept")
    expect(response.header).to have_key("Content-Type")
    expect(response.header["Accept"]).to eq("application/json")
    expect(response.header["Content-Type"]).to eq("application/json")
  end

  it 'invalid login does not return the api key' do
    user_login_params = { email: "invalid_request@email.com", password: "invalid" }
    post "/api/v1/sessions", params: user_login_params

    invalid_login_response = JSON.parse(response.body)

    expect(response).to_not be_successful
    expect(invalid_login_response).to_not have_key("api_key")
    expect(invalid_login_response).to have_key("error")
    expect(invalid_login_response["error"]).to have_key("user_authentication")
    expect(invalid_login_response["error"]["user_authentication"][0]).to eq("Invalid credentials.")
  end
end

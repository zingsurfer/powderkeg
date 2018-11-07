require 'rails_helper'

describe 'POST /api/v1/users' do
  it 'valid request sends the user an api_key' do
    user_params = { name: "Leia", email: "Leia@email.com", password: "Han Solo", password_confirmation: "Han Solo" }
    post "/api/v1/users", params: { user: user_params }
    user = User.last

    user_api_key = JSON.parse(response.body)
    
    expect(response).to be_successful
    expect(user.email).to eq(user_params[:email])
    expect(response).to have_http_status(201)
    expect(user_api_key).to have_key("api_key")
    expect(response.header).to have_key("Accept")
    expect(response.header).to have_key("Content-Type")
    expect(response.header["Accept"]).to eq("application/json")
    expect(response.header["Content-Type"]).to eq("application/json")
  end
  it 'invalid request without email does not send the user an api_key' do
    user_params = { name: "Leia", email: "", password: "Han Solo", password_confirmation: "Han Solo" }
    post "/api/v1/users", params: { user: user_params }

    invalid_registration_response = JSON.parse(response.body)

    expect(response).to_not be_successful
    expect(User.all).to eq([])
    expect(invalid_registration_response).to_not have_key("api_key")
    expect(invalid_registration_response).to have_key("error")
    expect(invalid_registration_response["error"]).to have_key("user_authentication")
    expect(invalid_registration_response["error"]["user_authentication"][0]).to eq("Invalid credentials.")
  end
end

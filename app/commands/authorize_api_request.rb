class AuthorizeApiRequest
  prepend SimpleCommand

  def initialize(headers = {})
    @headers = headers
  end

  def call
    user
  end

  private
  attr_reader :headers

  def user
    @user ||= User.find(decoded_auth_token[:user_id]) if decoded_auth_token # if no user or decoded_auth_token returns false, user will be nil
    @user || errors.add(:token, 'Invalid token.') && nil # this method will either return the user or throw this error
  end

  def decoded_auth_token # decodes token & retrieves the user's id
    @decoded_auth_token ||= JsonWebToken.decode(http_auth_header)
  end

  def http_auth_header # extracts the token from the auth header
    if headers['Authorization'].present?
      return headers['Authorization'].split(' ').last
    else
      errors.add(:token, 'Missing token.')
    end
    nil
  end
end

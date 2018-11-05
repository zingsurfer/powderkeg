class AuthenticateUser
  prepend SimpleCommand

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_reader :name, :email, :password

  def user
    user = User.find_by_email(email)
    return user if user && user.authenticate(password)
    
    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end

class User < ApplicationRecord
  validates_uniqueness_of :username
  has_secure_password
  has_secure_token :auth_token

  def invalidate_token
    self.update_columns(auth_token: nil)
  end

  self.validate_login(username, password)
    user = User.find_by(username: username)
    if user && user.validate(password)
      user
    end
  end

end

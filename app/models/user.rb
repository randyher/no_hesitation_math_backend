class User < ApplicationRecord

  has_many :games

  has_secure_password
  has_secure_token :auth_token

  validates :username, uniqueness: { case_sensitive: false }

  def invalidate_token
    self.update_columns(auth_token: nil)
  end

  def self.validate_login(username, password)
    user = find_by(username: username)
    if user && user.authenticate(password)
      user
    end
  end

end

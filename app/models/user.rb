class User < ApplicationRecord
  has_many :posts
  has_many :comments

  before_create -> { self.auth_token = SecureRandom.hex }

end

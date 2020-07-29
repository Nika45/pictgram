class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 }
  validates :email, presence: true
  validates :password, length: { in: 8..32 }
  VALID_PASSWORD_REGEX = /\A[a-zA-Z0-9]+\z/
  VALID_EMAIL_REGEX = /\A\S+@\S+\.\S+\z/
  has_secure_password
end

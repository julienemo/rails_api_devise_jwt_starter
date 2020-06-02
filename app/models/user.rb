class User < ApplicationRecord
  devise :database_authenticatable,
         :jwt_authenticatable,
         :registerable,
         :recoverable,
         :validatable,
         jwt_revocation_strategy: JwtBlacklist

  validates :username, uniqueness: { case_sensitive: false }
  validates :username, presence: true
end

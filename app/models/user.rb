# email:string
# password_digest:string
#
# password:string virtual
# password_confirmation:string virtual

class User < ApplicationRecord
  has_secure_password
  has_many :twitter_accounts

  validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, messages: "Must be a valid email address" }
end

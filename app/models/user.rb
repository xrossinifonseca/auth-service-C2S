class User < ApplicationRecord

  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :name, presence: true



end

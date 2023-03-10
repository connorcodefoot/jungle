class User < ActiveRecord::Base

  validates :name, 
    presence: true
  validates :email, 
    presence: true, 
    uniqueness: { case_sensitive: true }
  validates :password, 
  length: { minimum: 8 },
  allow_blank: false
  validates :password_confirmation, presence: true
  has_secure_password

end
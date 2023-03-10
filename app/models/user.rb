class User < ActiveRecord::Base

  has_secure_password

  validates :name, presence: true
  validates :email, presence: true
  validates :password, confirmation: true, unless: -> { password.blank? }

                        
  validates :password_confirmation, presence: true


end
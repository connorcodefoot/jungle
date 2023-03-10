class User < ActiveRecord::Base

  def self.authenticate_with_credentials(email, password)
    
    user = User.find_by_email(email)

    if (user && user.authenticate(password))
      return user
    end

  end

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
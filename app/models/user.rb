class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :email, :password, :password_confirmation

  has_many :articles

  def self.confirm(email_param, password_param)
    user = User.find_by({email: email_param})
    user.authenticate(password_param)
  end
  
end

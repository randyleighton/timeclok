class User < ActiveRecord::Base

  attr_accessor :password

  has_many :timecards
  has_many :days

  # has_secure_password

  # before_save { self.email = email.downcase if self.email }
  before_save :encrypt_password

  # EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # validates :name, presence: true, length: { maximum: 60 }
  validates :email, presence: true, uniqueness: true 
  # format: { with: EMAIL_REGEX },
  #   uniqueness: true, length: { minimum: 6 }
  # # validates :password, length: { minimum: 8 }
  validates_confirmation_of :password

def self.authenticate(email, password)
  user = User.where(email: email).first
  if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
  user
  else
  nil
  end
  # user = find_by_email(email)
  # if user && user.authenticate(password)
  #   user
  # else
  #   nil
  # end
end

def encrypt_password
  self.password_salt = BCrypt::Engine.generate_salt
  self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
end

end

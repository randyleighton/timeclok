class User < ActiveRecord::Base

  has_many :timecards
  has_many :days

  has_secure_password

  before_save { self.email = email.downcase 

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

  validates :name, presence: true, length: { maximum: 60 }
  validates :email, presence: true, format: { with: EMAIL_REGEX },
    uniqueness: true, length: { minimum: 6 }
  validates :password, length: { minimum: 8 }

end

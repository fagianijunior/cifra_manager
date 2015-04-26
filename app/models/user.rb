class User < ActiveRecord::Base
  
  belongs_to :user_status

  before_save { self.email = email.downcase }
  
  validates :first_name, presence: true

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 5 }, confirmation: true

  has_secure_password
end
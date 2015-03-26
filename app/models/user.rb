class User < ActiveRecord::Base
<<<<<<< HEAD
  
  belongs_to :user_status
  
  
=======

>>>>>>> 346ba98d3343dfc76599e18d8f636d0ca9fc9489
  before_save { self.email = email.downcase }
  
  validates :first_name, presence: true

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }

  validates :password, length: { minimum: 5 }, confirmation: true

  has_secure_password
end
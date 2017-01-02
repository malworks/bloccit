class User < ApplicationRecord
	# callback
	before_save { self.email = email.downcase if email.present? }

	# validates presence and min/max length for name and email
	validates :name, length: { minimum: 1, maximum: 100 }, presence: true
	validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  	
	# ensures when user pw is updated that they have a valid pw at least 6 characters long
	# allow_blank skips validation if no updated pw is given
  	validates :password, length: { minimum: 6 }, allow_blank: true

  	#validated email
   	validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

    # requires BCrypt to use. Used for hashing passwords
   	has_secure_password
end

class Admin < ActiveRecord::Base

	has_secure_password

	validates :username , presence: true, length: {in: 5..20 } , uniqueness: true
	validates :password , presence: true, confirmation: true ,  length: {in: 6..20} , :on => :create
	# validates :password_confirmation, :on => :create
	 
	validates :email , presence: true
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create


end
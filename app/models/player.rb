class Player < ActiveRecord::Base
	has_many :images
	has_many :skills
	has_many :likes

	validates :name , presence: true  , length: {in: 2..30 }
	validates :age , presence: true , numericality: { only_integer: true }

	mount_uploader :avatar, AvatarUploader

	validate :avatar_size

	private
		def avatar_size
			if avatar.size > 100.kilobytes
				errors.add(:avatar, "should be less than 100KB")
			end
		end	
end
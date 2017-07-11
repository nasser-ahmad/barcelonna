class Skill < ActiveRecord::Base

	belongs_to  :player

	has_many :likes


	def skill_thumbs_up
		self.likes.where(like: true).size
	end

	def skill_thumbs_down
		self.likes.where(like: false).size
	end
end
class Like < ActiveRecord::Base
	belongs_to :player
	belongs_to :skill

	validates_uniqueness_of  :skill , scope: :player
end
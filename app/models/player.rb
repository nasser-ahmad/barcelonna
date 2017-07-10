class Player < ActiveRecord::Base
	has_many :images
	has_many :skills

	validates :name , presence: true  , length: {in: 2..30 }
	validates :age , presence: true , numericality: { only_integer: true }

end
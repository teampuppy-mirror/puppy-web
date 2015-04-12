class WebHome < ActiveRecord::Base
	def listagem
		@pet = Pet.new
		return @pet.json_of_all_pets
	end
end

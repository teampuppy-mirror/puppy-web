class PetController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def get
		@id = params[:id]
		@pet = Pet.find(@id)

		render json: @pet
	end

	def get_all
		@pets = Pet.all
		@pets = {type: "pets", pets: @pets}

		render json: @pets
	end

end
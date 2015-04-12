class PetController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def get
		@id = params[:id]
		@pet = Pet.find(@id)

		render json: @pet
	end

	def get_all
		@pet = Pet.new
		@json_response = @pet.json_of_all_pets

		render json: @json_response
	end

end
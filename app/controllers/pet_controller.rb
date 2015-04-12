class PetController < ApplicationController
	skip_before_filter :authenticate, :only => [:get,:get_all]

	def get
		@id = params[:id]
		@pet = Pet.find(@id)

		render json: @pet
	end

	def get_all
		@pet = Pet.new
		@json_response = @pet.get_json_response

		render json: @json_response

	end

end
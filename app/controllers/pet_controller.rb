class PetController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def get
		@id = params[:id]
		@pet = Pet.find(@id)

		render json: @pet
	end

	def get_all
		
		@json_response = { 
			type: "pets",
			pets: []
		}

		Pet.all.each do |pet|
			@user = User.find(pet.user_id)
			
			@json_response[:pets] << {
				nome: pet.nome,
				genero: pet.sexo,
				especie: pet.especie,
				idade: pet.idade,
				cor: pet.cor,
				porte: pet.porte,
				localizacao: "Porto Alegre",
				foto: pet.foto,
				descricao_longa: pet.descricao_longa,
				legenda: pet.legenda,
				protetor: {
					id: @user.id,
					nome: @user.name
				}
			}
			
		end

		#@pets = {type: "pets", pets: @pets}

		render json: @json_response
	end

end
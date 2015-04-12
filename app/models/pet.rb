class Pet < ActiveRecord::Base

	def json_of_all_pets
		@json_responde = { 
			type: "pets",
			pets: []
		}

		Pet.all.each do |pet|
			@user = User.find(pet.user_id)
			@json_responde[:pets] << customize_json(@user, pet)
		end

		return @json_responde
	end

	def json_of_a_user(id)
		@pet = Pet.find(id)
		@user = User.find(@pet.user_id)
		@json_responde = customize_json(@user, @pet)

		return @json_responde
	end

	def customize_json(user, pet)
		@custom_json = {
			nome: pet.nome,
			genero: pet.sexo,
			especie: pet.especie,
			idade: pet.idade,
			cor: pet.cor,
			porte: pet.porte,
			localizacao: "Porto Alegre",
			foto: pet.foto,
			miniatura: pet.miniatura,
			descricao_longa: pet.descricao_longa,
			legenda: pet.legenda,
			likes: pet.likes.count,
			protetor: {
				id: user.id,
				nome: user.name
			}
		}

		return @custom_json
	end

  belongs_to :user
  has_one :user

  has_many :likes
  has_many :users, through: :likes

  has_many :reports
  has_many :users, through: :reports
end

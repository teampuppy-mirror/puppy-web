class User < ActiveRecord::Base

	def json_lista_de_animais_likeds (email)
		@user = User.where( {email: email} )[0]
		
		@json_responde = { 
			type: "pets",
			pets: []
		}

		@user.likes.each do |id_pet|
			pet = Pet.find(id_pet)
			@json_responde[:pets] << {
				id: pet.id,
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
				likes: pet.likes.count
			}
		end

		return @json_responde
	end

	has_many :pets

	has_many :likes
	has_many :pets, through: :likes

	has_many :reports
	has_many :pets, through: :reports
end
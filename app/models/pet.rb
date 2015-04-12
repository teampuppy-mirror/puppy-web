class Pet < ActiveRecord::Base

	def get_json_response
		@json_responde = { 
			type: "pets",
			pets: []
		}

		Pet.all.each do |pet|
			@user = User.find(pet.user_id)

			@json_responde[:pets] << {
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

		return @json_responde
	end

  belongs_to :user
  has_one :user
  has_many :likes
  has_many :users, through: :likes
end

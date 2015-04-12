@ariel = User.create({name: 'Ariel Moraes', email: "ariel.s.moraes@gmail.com", password: "xpto", token: "acme"})
@emerson = User.create({name: 'Emerson Rocha', email: "emerson@alligo.com.br", password: "xpto", token: "acme"})

Pet.create({
	nome: "Princesa do Junior",
	foto: "http://www.clinicavetmed.com.br/site/wp-content/uploads/2014/10/Los-gatos-nos-ignoran-1.jpg",
	sexo: 1,
	especie: "Gato",
	raca: "Vira-lata",
	idade: "Filhote",
	porte: "Pequeno",
	cor: "Azul",
	legenda: "Oi sou a princesa, quer me adotar?",
	descricao_longa: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi odio velit, vestibulum sit amet porttitor quis, fermentum in justo. Donec pharetra magna sit amet enim finibus, eu mollis magna varius. Proin vel metus sed arcu dignissim ornare lobortis in quam. ",
	status: "Para adoção",
	user_id: @emerson.id
})

Pet.create({
	nome: "Xiau",
	foto: "http://info.abril.com.br/images/materias/2014/02/thumbs/thumb-32768160227-cachorro-resized.jpg",
	sexo: 2,
	especie: "Cachorro",
	raca: "Vira-lata",
	idade: "Jovem",
	porte: "Pequeno",
	cor: "Marron",
	legenda: "quer me adotar?",
	descricao_longa: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi odio velit, vestibulum sit amet porttitor quis, fermentum in justo. Donec pharetra magna sit amet enim finibus, eu mollis magna varius. Proin vel metus sed arcu dignissim ornare lobortis in quam. ",
	status: "Em adoção",
	user_id: @emerson.id
})

Pet.create({
	nome: "Donatelo",
	foto: "http://blog.meuamigopet.com.br/blog/wp-content/uploads/2013/01/meu_amigo_pet_criar_reptil_quarta_2.jpeg",
	sexo: 1,
	especie: "Tartaruga",
	raca: "",
	idade: "Adulto",
	porte: "Pequeno",
	cor: "Verde",
	legenda: "quer me adotar?",
	descricao_longa: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi odio velit, vestibulum sit amet porttitor quis, fermentum in justo. Donec pharetra magna sit amet enim finibus, eu mollis magna varius. Proin vel metus sed arcu dignissim ornare lobortis in quam. ",
	status: "Em processo de adoção",
	user_id: @ariel.id
})

Pet.create({
	nome: "Hamtaro",
	foto: "http://quemequemanda.com.br/wp-content/uploads/2014/08/white-hamster.jpg",
	sexo: 2,
	especie: "Hamster",
	raca: "Hamster",
	idade: "Adulto",
	porte: "Grande",
	cor: "Colorido",
	legenda: "quer me adotar?",
	descricao_longa: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi odio velit, vestibulum sit amet porttitor quis, fermentum in justo. Donec pharetra magna sit amet enim finibus, eu mollis magna varius. Proin vel metus sed arcu dignissim ornare lobortis in quam. ",
	status: "Para adoção",
	user_id: @ariel.id
})

@ariel.likes.create(pet: Pet.find(1))
@ariel.likes.create(pet: Pet.find(2))
@emerson.likes.create(pet: Pet.find(3))
@emerson.likes.create(pet: Pet.find(4))
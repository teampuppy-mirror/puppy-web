@ariel = User.create({name: 'Ariel Moraes', email: "ariel.s.moraes@gmail.com", password: "xpto", token: "acme"})
@emerson = User.create({name: 'Emerson Rocha', email: "emerson@alligo.com.br", password: "xpto", token: "acme"})

Pet.create({
	nome: "Pirulito",
	foto: "http://puppy.app.hackinpoa.tsuru.io/img/cat_1_320.jpg",
	miniatura: "http://puppy.app.hackinpoa.tsuru.io/img/cat_1_100.jpg",
	sexo: 1,
	especie: "Gato",
	raca: " ",
	idade: "Filhote",
	porte: "Pequeno",
	cor: "Pardo",
	legenda: " ",
	descricao_longa: " ",
	status: " ",
	user_id: @emerson.id
})

Pet.create({
	nome: "Jujuba",
	foto: "http://puppy.app.hackinpoa.tsuru.io/img/cat_2_320.jpg",
	miniatura: "http://puppy.app.hackinpoa.tsuru.io/img/cat_2_100.jpg",
	sexo: 2,
	especie: "Gato",
	raca: " ",
	idade: "Adulto",
	porte: "Pequeno",
	cor: "Marron",
	legenda: " ",
	descricao_longa: " ",
	status: " ",
	user_id: @emerson.id
})

Pet.create({
	nome: "Bóris",
	foto: "http://puppy.app.hackinpoa.tsuru.io/img/dog_1_320.jpg",
	miniatura: "http://puppy.app.hackinpoa.tsuru.io/img/dog_1_100.jpg",
	sexo: 1,
	especie: "Cachorro",
	raca: "",
	idade: "Adulto",
	porte: "Pequeno",
	cor: "Bege",
	legenda: " ",
	descricao_longa: " ",
	status: " ",
	user_id: @ariel.id
})

Pet.create({
	nome: "Hamtaro",
	foto: "http://puppy.app.hackinpoa.tsuru.io/img/dog_3_320.jpg",
	miniatura: "http://puppy.app.hackinpoa.tsuru.io/img/dog_3_100.jpg",
	sexo: 2,
	especie: "Cachorro",
	raca: " ",
	idade: "Idoso",
	porte: "Grande",
	cor: "Marron",
	legenda: " ",
	descricao_longa: " ",
	status: " ",
	user_id: @ariel.id
})

@ariel.likes.create(pet: Pet.find(1))
@ariel.likes.create(pet: Pet.find(2))
@emerson.likes.create(pet: Pet.find(3))
@emerson.likes.create(pet: Pet.find(4))

@ariel.reports.create(pet: Pet.first)

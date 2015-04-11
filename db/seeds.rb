# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@usuarios = User.create(
	[
		{name: 'Emerson Rocha', email: "emerson@alligo.com.br", password: "xpto", token: "acme"},
		{name: 'Ariel Moraes', email: "ariel.s.moraes@gmail.com", password: "xpto", token: "acme"}
	])
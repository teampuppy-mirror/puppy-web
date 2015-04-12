class TodoController < ApplicationController
  skip_before_filter :authenticate, :only => [:index]

  def index
  	@test = {
  		mensage: "Não há metodo aqui! Veja os demais links para informação",
  		site_mobile: "http://puppy.app.hackinpoa.tsuru.io/web",
  		ios_codigo_fonte: "https://github.com/teampuppy/puppy-ios",
  		webservice_documentacao_postman: "https://github.com/teampuppy/puppy-modelagem/tree/master/webservice",
  		organizacao: "https://github.com/teampuppy"
  	}

  	render json: @test
  end
end

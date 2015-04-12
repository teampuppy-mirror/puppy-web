class TodoController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def index
  	@test = {error: "serviço não existente"}

  	render json: @test
  end
end

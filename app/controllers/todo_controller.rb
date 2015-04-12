class TodoController < ApplicationController
  skip_before_filter :authenticate, :only => [:index]

  def index
  	@test = {error: "serviço não existente"}

  	render json: @test
  end
end

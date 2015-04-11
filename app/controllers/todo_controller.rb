class TodoController < ApplicationController
  def index
  	@test = {name: 'teste'}

  	render json: @test
  end
end

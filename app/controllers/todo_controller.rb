class TodoController < ApplicationController
  skip_before_filter :verify_authenticity_token  

  def index
  	@test = {name: 'teste'}

  	render json: @test
  end
end

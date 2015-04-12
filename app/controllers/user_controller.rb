class UserController < ApplicationController
	skip_before_filter :verify_authenticity_token

  def create
		@ja_existe = User.where({email:params[:email]})
		if @ja_existe != []
			render json: {code: 403, error: "Usuário já existe"}
		else
			# testar se dados sao validos. Sério

			User.create(user_params)
			render json: {code: 200, message: "Usuário criado com sucesso"}
		end 
  end


	def get_active
		@id = request.headers["HTTP_DEBUG_USER_ID"].to_i
		@user = User.find(@id)

		render json: @user
	end

  def update
		#@id = request.headers["HTTP_DEBUG_USER_ID"].to_i
		#@user = User.find(@id)
  end

  private

  def user_params
    params.permit(:email, :name, :password)
  end
  
end

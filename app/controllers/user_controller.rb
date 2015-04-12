class UserController < ApplicationController
	skip_before_filter :authenticate, :only => [:create,:update]

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

  def delete

		# ...
  end

	def get_active
		if session['user.email']
		  @user = User.where({email: session['user.email']})
		  render json: @user
		else
			render json: {code: 404, error: "Usuário não encontrado/autenticado"}
		end
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

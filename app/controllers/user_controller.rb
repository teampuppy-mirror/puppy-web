class UserController < ApplicationController
	skip_before_filter :verify_authenticity_token
  
	def get_active
		@id = request.headers["HTTP_DEBUG_USER_ID"].to_i
		@user = User.find(@id)

		render json: @user
	end

  def update
		#@id = request.headers["HTTP_DEBUG_USER_ID"].to_i
		#@user = User.find(@id)
  end
  
end

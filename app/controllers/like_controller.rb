class LikeController < ApplicationController

	def add
			Like.create(like_params)
			render json: {code: 200, message: "Like criado com sucesso"}
  end

  private

	def like_params
    params.permit(:user_id, :pet_id)
  end
end
class ReportController < ApplicationController

	def add
		Report.create(report_params)
		render json: {code: 200, message: "Report enviado com sucesso"}
  end

  private

	def report_params
    params.permit(:user_id, :pet_id, :tipo, :outros)
  end

end
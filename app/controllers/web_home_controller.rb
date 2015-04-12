class WebHomeController < ApplicationController
	skip_before_filter :authenticate, :only => [:display]

	def display
		@webhome = WebHome.new
		@lista = @webhome.listagem
	end
end

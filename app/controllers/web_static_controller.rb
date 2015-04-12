class WebStaticController < ApplicationController
	skip_before_filter :authenticate, :only => [:sobre, :contato, :protetor]
	
	def sobre
	end

	def contato
	end

	def protetor
	end

end
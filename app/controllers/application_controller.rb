class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  # @todo melhorar autenticação
  before_filter :authenticate


  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      @is_user = User.where({email:username, password: password})
      if @is_user != []
      	session['user.email'] =  username
      end
      @is_user != []
  	end
  end

end

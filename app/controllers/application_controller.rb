class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  # @todo melhorar autenticação
  before_filter :authenticate

  rescue_from ActionController::RoutingError, with: :render_404

  rescue_from Exception do |exception|
    render_500(exception)
  end

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      @is_user = User.where({email:username, password: password})
      if @is_user != []
      	session['user.email'] =  username
      end
      @is_user != []
  	end
  end

  def render_404
    puts "passei aqui :D"
    respond_to do |format|
      format.xml  { render :xml =>
             "<error>Servidor falhou.</error>",
             :status => 500 }
      format.html { render :file => "#{Rails.root.join('public')}/500.html.erb", layout: "", :status => 500}
      format.json { render :json =>
              {:error => "Servidor falhou."}.to_json,
               :status => 500 }
    end and return
  end

def render_500(exception)
    @exception = exception
    debugger
    puts exception
    puts exception.backtrace.join("\n")
    respond_to do |format|
      format.xml  { render :xml =>
             "<error>Servidor falhou.</error>",
             :status => 500 }
      format.html { render :file => "#{Rails.root.join('public')}/500.html.erb", layout: "", :status => 500}
      format.json { render :json =>
              {:error => "Servidor falhou."}.to_json,
               :status => 500 }
    end and return
  end

end

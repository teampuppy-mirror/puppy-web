class ErrorsController < ActionController::Base
 
  def show
      @exception       = env['action_dispatch.exception']
      @status_code     = ActionDispatch::ExceptionWrapper.new(env, @exception).status_code
      @rescue_response = ActionDispatch::ExceptionWrapper.rescue_responses[@exception.class.name]
 
      respond_to do |format|
        format.json { render :json =>
                {:error => @exception.to_s}.to_json,
                 :status => @status_code }
        format.xml  { render :xml =>
               "<error>#{@exception.to_s}</error>",
               :status => @status_code }
        format.html { render :file => "#{Rails.root.join('public')}/#{@status_code}.html", layout: "", :status => 500}
 
      end and return
  end
end
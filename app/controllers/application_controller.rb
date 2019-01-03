class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
    before_action :authorize
    before_action :authenticate
    protected
  def authorize
    unless User.find_by(id: session[:user_id])
    redirect_to login_url, notice:"you trying to access without permit ? Lol"
    end
  end
    protected
 	def authenticate
    authenticate_or_request_with_http_basic do |name, password|
    name == "admin" && password == "125"
    end
  end
  rescue_from ActiveRecord::RecordNotFound, with: :not_found 
  rescue_from Exception, with: :not_found
  rescue_from ActionController::RoutingError, with: :not_found
  def raise_not_found
    raise ActionController::RoutingError.new("No route matches #{params[:unmatched_route]}")
  end
  def not_found
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/404", layout: false, status: :not_found }
      format.xml { head :not_found }
      format.any { head :not_found }
    end
  end
  def error
    respond_to do |format|
      format.html { render file: "#{Rails.root}/public/500", layout: false, status: :error }
      format.xml { head :not_found }
      format.any { head :not_found }
    end
  end
end
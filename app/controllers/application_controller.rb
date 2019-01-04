class ApplicationController < ActionController::Base

protect_from_forgery with: :exception


before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
end


def record_not_found
render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found 
end

def file_not_found
render :file => "#{Rails.root}/public/500", :layout => false, :status => :not_found 
end

def invalid_record
render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found 
end
end
class SessionsController < ApplicationController
	 skip_before_action :authorize
   after_action :authenticate
  def create
  	  user = User.find_by(name: params[:name])
      if user and user.authenticate(params[:password])
          session[:user_id] = user.id
          redirect_to articles_path
      else
          redirect_to login_url,alert:"Invalid username or password"
      end	
  end
  def destroy
  	session[:user_id] = nil
    redirect_to login_url,alert:"Successfully logged out "
  end

end	

class ProfilesController < ApplicationController
    def index
	 	@profiles = Profile.all
	end
	def show
	 	@profile = Profile.find(params[:id])
	end
	def new
		 @profile = Profile.new
	end
	def edit
	 	@profile = Profile.find(params[:id])
	end
	def create
	 	@profile = Profile.new(profile_params)
	   if @profile.save
	 	  redirect_to articles_path
	  end
	end
	private
	def profile_params
	params.permit(:phone,:email,:author_id)
	end
end

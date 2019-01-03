class AuthorsController < ApplicationController
    def index
	 	@authors = Author.all
	end
	def show
	 	@author = Author.find(params[:id])
	end

	def new
		@author = Author.new
		@author_profile = @author.build_profile
	end

	def authorform
		@author = Author.new
	end

	def edit
	 	@author = Author.find(params[:id])
	end
	def create
	 	@author = Author.new(author_params)
	   if @author.save
	 	 redirect_to articles_path
	  else
	  	render :new
	  end
	end
	private
	def author_params
	params.require(:author).permit(:name, profile_attributes: [:id, :email,:phone])
	end
end

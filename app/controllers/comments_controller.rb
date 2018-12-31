class CommentsController < ApplicationController
 before_action :set_comments
 before_action :set_comment, only: [:show, :edit, :update, :destroy]

 # GET users/1/comments
 def index
   @comments = @article.comments
 end

 # GET users/1/comments/1
 def show
 	
 end

 # GET users/1/comments/new
 def new
   @comment = @article.comments.new
 end

 # GET users/1/comments/1/edit
 def edit

 end

 # POST users/1/comments
 def create
   @comment = @article.comments.new(comment_params)

   if @comment.save
     redirect_to article_comments_path
   else
     render action: 'new'
   end
 end

 # PUT users/1/comments/1
 def update
   if @comment.update_attributes(comment_params)
     redirect_to([@comment.article, @comment], notice: 'Comment was successfully updated.')
   else
     render action: 'edit'
   end
 end

 # DELETE users/1/comments/1
 def destroy
   @comment.destroy
	redirect_to article_comments_url(@article)
 end

 private
   # Use callbacks to share common setup or constraints between actions.
   def set_comments
     @article = Article.find(params[:article_id])
   end

   def set_comment
     @comment = @article.comments.find(params[:id])
   end

   # Only allow a trusted parameter "white list" through.
   def comment_params
     params.require(:comment).permit(:name, :comment)
   end
 
end
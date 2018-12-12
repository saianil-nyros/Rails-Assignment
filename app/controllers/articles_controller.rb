class ArticlesController < ApplicationController
    def index
   @articles = if params[:term]
          Article.where('title LIKE ?',"%#{params[:term]}")
       elsif params[:term1]
          Article.where('category_id LIKE ?',"%#{params[:term1]}")
       elsif params[:both]
          Article.where('title LIKE ?',"%#{params[:both]}").or(Author.where('name LIKE ?',"%#{params[:both]}" ))
       elsif params[:not]
          Article.where.not('title LIKE ?',"%#{params[:not]}")
       else
          Article.all
       end
    end
    def show
      @article = Article.find(params[:id])
    end
    def new
      @article = Article.new
    end
    def edit
      @article = Article.find(params[:id])
    end
    def create
      @article = Article.new(article_params)
       if @article.save
        redirect_to @article
      else
        render 'new'
      end
    end
   def update
      @article = Article.find(params[:id])
      if @article.update(article_params)
         redirect_to @article
      else
        render 'edit'
      end
    end
   def destroy
      @article = Article.find(params[:id])
      @article.destroy
      redirect_to articles_path
    end
   private
      def article_params
        params.require(:article).permit(:title,:description, :author_id,:category_id)
      end


end
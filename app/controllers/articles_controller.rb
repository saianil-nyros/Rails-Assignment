class ArticlesController < ApplicationController
  include TimeHelper
  def index
    @articles = if params[:term]
      Article.where('title LIKE ?',"%#{params[:term]}")
      elsif params[:term1]
      Article.where('category_id LIKE ?',"%#{params[:term1]}")
      elsif params[:both]
      Article.all.includes(:author).where(authors: {name: params[:both]})
      elsif params[:not]
      Article.where.not('title LIKE ?',"%#{params[:not]}")
     elsif params[:having]
       Article.where.not(nopages:nil).having('COUNT(*)>1').group(:nopages)
      else
      Article.all
      Article.order('created_at DESC')
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
         if @article.save(validation:true)
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
    def display
        @articles=Article.all
    end
     def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end
    private
        def article_params
          params.require(:article).permit(:title,:description,:nopages,:author_id,:category_id,:checkbox,:image,:file)
        end
    end
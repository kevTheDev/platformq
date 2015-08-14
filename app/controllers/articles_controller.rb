class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all.page(params[:page])
  end
  
  def show
    @article = Article.friendly.find(params[:id])
  end
  
end
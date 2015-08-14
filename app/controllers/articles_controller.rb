class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all.page(params[:page])
  end
  
  def show
    @article = Article.friendly.find(params[:id])
    @comments = @article.comments.page(params[:page])
    @markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, extensions = {})
  end
  
end
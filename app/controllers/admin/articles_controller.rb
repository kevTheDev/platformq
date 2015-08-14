class Admin::ArticlesController < Admin::BaseController
  
  def index
    @articles = Article.all.page(params[:page])
  end
  
  def new
    @article = Article.new
  end
  
  def create
    @article = Article.new(article_params)
    
    if @article.save
      redirect_to(admin_articles_path, notice: 'Article Created')
    else
      render action: 'new'
    end
  end
  
  def edit
    @article = Article.friendly.find(params[:id])
  end
  
  def update
    @article = Article.friendly.find(params[:id])
    
    if @article.update_attributes(article_params)
      redirect_to(admin_articles_path, notice: 'Article Updated')
    else
      render action: 'edit'
    end
  end
  
  def destroy
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :body)
  end
  
end
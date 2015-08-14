class Admin::ArticlesController < Admin::BaseController
  
  def index
    @articles = Article.all.page(params[:page])
  end
  
  def new
    @article = Article.new
  end
  
  def create
    creator = Articles::Create.new(article_params)
    
    if creator.create
      redirect_to(admin_articles_path, notice: 'Article Created')
    else
      @article = creator.article
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
    @article = Article.friendly.find(params[:id])
    @article.destroy
    
    redirect_to(admin_articles_path, notice: 'Article Deleted')
  end
  
  private
  
  def article_params
    params.require(:article).permit(:title, :body)
  end
  
end
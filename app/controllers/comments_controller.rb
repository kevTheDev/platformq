class CommentsController < ApplicationController
  
  def create
    article = Article.find(params[:article_id])
    comment = Comment.new(comment_params)
    
    if comment.save
      redirect_to(article_path(article), notice: 'Thanks for the comment!')
    else
      redirect_to(article_path(article), notice: 'You cant post a comment without any text!')
    end
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:body)
  end
  
end
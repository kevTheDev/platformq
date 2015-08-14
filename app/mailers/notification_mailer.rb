class NotificationMailer < ActionMailer::Base
  
  def default_url_options
      { host: 'http://localhost:3000' }
    end
  
  def new_article_notification(article, email)
    @article = article
    @email   = email
    
    mail(to: email)
  end
  
end
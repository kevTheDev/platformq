class NotificationMailer < ActionMailer::Base
  
  def default_url_options
      { host: 'http://localhost:3000' }
    end
  
  def new_article_notification(article)
    emails = Subscriber.pluck('email')
    @article = article
    
    mail(to: emails)
  end
  
end
class NotificationMailer < ActionMailer::Base
  
  def new_article_notification(article)
    emails = Subscriber.pluck('email')
    @article = article
    
    mail(to: emails)
  end
  
end
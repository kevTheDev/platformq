class SubscriberNotificationWorker
  
  include Sidekiq::Worker  
  
  def perform(article_slug)
    article = Article.friendly.find(article_slug)
    
    NotificationMailer.new_article_notification(article).deliver
  end
  
end
class SubscriberNotificationWorker
  
  include Sidekiq::Worker  
  
  def perform(article_slug)
    article = Article.friendly.find(article_slug)
    
    Subscriber.pluck('email').each do |email|
      NotificationMailer.new_article_notification(article, email).deliver
    end
  end
  
end
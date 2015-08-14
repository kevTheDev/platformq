module Articles
  
  class Create
    
    def initialize(article_params)
      @article_params = article_params
    end
    
    def create
      @article = Article.new(article_params)
      
      if @article.save
        SubscriberNotificationWorker.perform_async(@article.id)
      end
    end
    
    attr_reader :article_params, :article
    
  end
  
end
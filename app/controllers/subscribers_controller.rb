class SubscribersController < ApplicationController
  
  def create
    subscriber = Subscriber.new(subscriber_params)
    
    if subscriber.save
      redirect_to(articles_path, notice: 'Subscribed')
    else
      redirect_to(articles_path, warning: 'Subscribed')
    end
  end
  
  def destroy
    subscriber = Subscriber.find_by_email(params[:email])
    subscriber.destroy
    
    redirect_to articles_path, notice: 'You have been unsubscribed'
  end
  
  private
  
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
  
end
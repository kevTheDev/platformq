require 'rails_helper'

describe SubscriberNotificationWorker do
  
  describe 'perform(article_id)' do
    
    let(:notification_mailer) { double('notification_mailer', deliver: true) }
    
    let(:article) { create(:article) }
    
    let(:worker) { described_class.new }
    
    let(:subscriber) { create(:subscriber) }
    
    before do
      NotificationMailer.stub(:new_article_notification) { notification_mailer }
    end
    
    it 'should send notification emails to all the subscribers' do
      expect(NotificationMailer).to receive(:new_article_notification).with(article, subscriber.email)
      worker.perform(article.id)
    end
    
  end
  # perform(article_id)
  
end
require 'rails_helper'

module Articles
  
  describe Create do
    
    subject { described_class.new({ }) }
    
    context 'failed validation' do
      
      before do
        allow_any_instance_of(Article).to receive(:save) { false }
      end
      
      it 'does not send emails to subscribers' do
        expect(SubscriberNotificationWorker).to_not receive(:perform_async)
        subject.create
      end
      
    end
    # failed validation
    
    context 'successful save' do
      
      before do
        allow_any_instance_of(Article).to receive(:save) { true }
      end
      
      it 'sends a notification to the subscribers' do
        expect(SubscriberNotificationWorker).to receive(:perform_async)
        subject.create
      end
    end
    # successful save
    
  end
  
end
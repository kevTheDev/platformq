require 'rails_helper'

describe SubscribersController do
  
  describe 'POST create' do
    
    let(:valid_params) { { subscriber: { email: 'test@example.com' } } }
    
    context 'failed save' do
      
      before do
        allow_any_instance_of(Subscriber).to receive(:save) { false }
        post :create, valid_params
      end
      
      it { should respond_with(:redirect) }
    end
    # failed save
    
    context 'successful save' do
      
      before do
        allow_any_instance_of(Subscriber).to receive(:save) { true }
        post :create, valid_params
      end
      
      it { should respond_with(:redirect) }
    end
    # successful save
    
  end
  # POST create
  
end
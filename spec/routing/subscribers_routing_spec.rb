require 'rails_helper'

describe SubscribersController do
  
  describe 'routes' do
    
    it { post('subscribers').should route_to('subscribers#create') }
    
    it { get('unsubscribe?email=kev@example.com').should route_to('subscribers#unsubscribe', email: 'kev@example.com') }
    
  end
  # routes
  
end

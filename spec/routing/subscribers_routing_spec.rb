require 'rails_helper'

describe SubscribersController do
  
  describe 'routes' do
    
    it { post('subscribers').should route_to('subscribers#create') }
    
  end
  # routes
  
end

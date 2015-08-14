require 'rails_helper'

describe ArticlesController do
  
  describe 'routes' do
    
    it { get('articles').should route_to('articles#index') }
    it { get('articles/1').should route_to('articles#show', id: '1') }
    
    
  end
  # routes
  
end

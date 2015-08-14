require 'rails_helper'

describe CommentsController do
  
  describe 'routes' do
    
    it { post('articles/1/comments').should route_to('comments#create', article_id: '1') }
    
    
  end
  # routes
  
end

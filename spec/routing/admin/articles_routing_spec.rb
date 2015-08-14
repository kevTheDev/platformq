require 'rails_helper'

describe Admin::ArticlesController do
  
  describe 'routes' do
    
    it { get('admin/articles').should route_to('admin/articles#index') }
    it { get('admin/articles/new').should route_to('admin/articles#new') }
    it { post('admin/articles').should route_to('admin/articles#create') }
    it { get('admin/articles/1/edit').should route_to('admin/articles#edit', id: '1') }
    it { put('admin/articles/1').should route_to('admin/articles#update', id: '1') }
    it { delete('admin/articles/1').should route_to('admin/articles#destroy', id: '1') }
    
    
  end
  # routes
  
end

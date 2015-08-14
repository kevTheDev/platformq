require 'rails_helper'

describe Admin::ArticlesController do
  
  context 'guest user' do
    
    describe 'GET index' do
    
      before do
        get :index
      end
    
      it { should respond_with(401) }
    
    end
    # GET index
    
  end
  # guest user
  
  context 'authenticated user' do
    
    before do
      http_login
    end
    
    let(:article) { create(:article) }
  
    describe 'GET index' do
    
      before do
        get :index
      end
    
      it { should respond_with(:ok) }
      it { should render_template('index') }
    
    end
    # GET index
  
    describe 'GET edit' do
      
      before do
        get :edit, id: article.id
      end
    
      it { should respond_with(:ok) }
      it { should render_template('edit') }
      
    end
    # GET edit
    
  end
  # authenticated user
  
end
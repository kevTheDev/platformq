require 'rails_helper'

describe Admin::ArticlesController do
  
  let(:article) { create(:article) }
  
  context 'guest user' do
    
    describe 'GET index' do
    
      before do
        get :index
      end
    
      it { should respond_with(401) }
    end
    # GET index
    
    describe 'GET edit' do
    
      before do
        get :edit, id: article.id
      end
    
      it { should respond_with(401) }
    end
    # GET edit
    
    describe 'GET new' do
    
      before do
        get :new
      end
    
      it { should respond_with(401) }
    end
    # GET new
    
  end
  # guest user
  
  context 'authenticated user' do
    
    before do
      http_login
    end
    
    let(:valid_params) { { article: { title: 'test', body: 'test' } } }
    
    describe 'GET index' do
    
      before do
        get :index
      end
    
      it { should respond_with(:ok) }
      it { should render_template('index') }
    
    end
    # GET index
    
    describe 'GET new' do
      
      before do
        get :new
      end
    
      it { should respond_with(:ok) }
      it { should render_template('new') }
      
    end
    # GET new
    
    describe 'POST create' do
      
      context 'failed save' do
        
        before do
          allow_any_instance_of(Article).to receive(:save) { false }
          post :create, valid_params
        end
        
        it { should render_template('new')}
      end
      # failed save
      
      context 'successful save' do
        
        before do
          allow_any_instance_of(Article).to receive(:save) { true }
          post :create, valid_params
        end
        
        it { should respond_with(:redirect) }
      end
      # successful save
      
    end
    # POST create
  
    describe 'GET edit' do
      
      before do
        get :edit, id: article.id
      end
    
      it { should respond_with(:ok) }
      it { should render_template('edit') }
      
    end
    # GET edit
    
    describe 'PUT update' do
      
      context 'failed save' do
        
        before do
          allow_any_instance_of(Article).to receive(:save) { false }
          put :update, valid_params.merge(id: article.id)
        end
        
        it { should render_template('edit')}
      end
      # failed save
      
      context 'successful save' do
        
        before do
          allow_any_instance_of(Article).to receive(:save) { true }
          put :update, valid_params.merge(id: article.id)
        end
        
        it { should respond_with(:redirect) }
      end
      # successful save
      
    end
    # PUT update
    
    
    
  end
  # authenticated user
  
end
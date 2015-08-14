require 'rails_helper'

describe ArticlesController do
  
  describe 'GET index' do
    
    before do
      get :index
    end
    
    it { should respond_with(:ok) }
    it { should render_template('index') }
    
  end
  # GET index
  
  describe 'GET show' do
    
    let(:article) { create(:article) }
    
    before do
      get :show, id: article.id
    end
    
    it { should respond_with(:ok) }
    it { should render_template('show') }
    
  end
  # GET show
  
end
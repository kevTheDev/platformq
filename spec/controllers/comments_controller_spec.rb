require 'rails_helper'

describe CommentsController do
  
  describe 'POST create' do
    
    let(:article) { create(:article) }
    
    let(:valid_params) { { article_id: article.id, comment: { body: 'what a comment' } } }
    
    context 'failed save' do
      
      before do
        allow_any_instance_of(Comment).to receive(:save) { false }
        post :create, valid_params
      end
      
      it { should respond_with(:redirect) }
    end
    # failed save
    
    context 'successful save' do
      
      before do
        allow_any_instance_of(Comment).to receive(:save) { true }
        post :create, valid_params
      end
      
      it { should respond_with(:redirect) }
    end
    # successful save
    
  end
  # POST create
  
end
require 'rails_helper'

describe Article do

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end
  # validations

  describe 'relations' do
    xit { should have_many(:comments) }
  end
  # relations

end

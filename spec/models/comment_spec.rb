require 'rails_helper'

describe Comment do

  describe 'validations' do
    it { should validate_presence_of(:article) }
    it { should validate_presence_of(:body) }
  end
  # validations

  describe 'relations' do
    it { should belong_to(:article) }
  end
  # relations

end

require 'rails_helper'

describe Subscriber do

  describe 'validations' do

    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }

  end
  # validations

end

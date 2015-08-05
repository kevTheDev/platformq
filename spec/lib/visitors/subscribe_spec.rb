require 'spec_helper'

module Visitors

  describe Subscribe do

    context 'new user' do
      it 'returns 201'
    end
    # new user

    context 'user already subscribed' do

      it 'returns 200'
    end
    # user already subscribed

    context 'malformed email' do
      xit 'returns a 422 error'
    end
    # malformed email

    context 'missing email' do

      xit 'returns a 422 error'
    end
    # missing email

  end
end

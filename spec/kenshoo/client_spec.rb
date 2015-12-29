require 'spec_helper'

describe Kenshoo::Client do
  before do
    @client = Kenshoo::Client.new(username: 'username', password: 'password', ks_id: '1234')
  end

  describe 'reports' do
    it 'should return a list of available resources' do
      pending
    end
  end
end

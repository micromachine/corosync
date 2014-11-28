require 'spec_helper'
describe 'corosync' do

  context 'with defaults for all parameters' do
    it { should contain_class('corosync') }
  end
end

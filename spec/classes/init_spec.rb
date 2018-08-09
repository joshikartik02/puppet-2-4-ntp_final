require 'spec_helper'
describe 'ntp_final' do
  context 'with default values for all parameters' do
    it { should contain_class('ntp_final') }
  end
end

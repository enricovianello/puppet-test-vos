require 'spec_helper'

describe 'testvos' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }

      it "check testvo" do
        is_expected.to contain_voms__client('test.vo')
      end
      it "check testvo2" do
        is_expected.to contain_voms__client('test.vo.2')
      end
      it "check dteam" do
        is_expected.to contain_voms__client('dteam')
      end      

    end
  end
end

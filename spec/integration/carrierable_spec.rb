# frozen_string_literal: true

require 'diy/carrierable'

RSpec.describe DIY::Carrierable do
  subject(:carrier) do
    class Example
      include DIY::Carrierable

      def successful_call(message)
        success(message)
      end

      def failed_call(message)
        failure(:invalid, { message: 'Has an error' }, message)
      end

      self
    end
  end

  describe '.private_methods' do
    subject(:private_methods) { carrier.new.private_methods }

    it { is_expected.to include(:success, :failure) }
  end

  describe '#successful_call' do
    subject(:successful_call) { carrier.new.successful_call('Trying success') }

    it { is_expected.to be_successful }
  end

  describe '#failed_call' do
    subject(:failed_call) { carrier.new.failed_call('Trying failure') }

    it { is_expected.to be_failed }
  end
end

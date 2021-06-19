# frozen_string_literal: true

module DIY
  module Carrierable
    # Describes result of successful action
    class SuccessCarrier < DIY::Carrierable::BaseCarrier
      # @!attribute [r] payload
      #   @return [Object]
      attr_reader :payload

      # @param payload [Object]
      def initialize(payload)
        @payload = payload
      end

      # @return [TrueClass]
      def successful?
        true
      end
    end
  end
end

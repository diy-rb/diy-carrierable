# frozen_string_literal: true

module DIY
  module Carrierable
    # Describes result of failed action
    class FailureCarrier < DIY::Carrierable::BaseCarrier
      # @!attribute [r] code
      #   @return [Symbol]
      # @!attribute [r] errors
      #   @return [Hash, Array, nil]
      # @!attribute [r] payload
      #   @return [Object, nil]
      attr_reader :code, :errors, :payload

      # @param code [Symbol] common reason of the failure
      # @param errors [Hash, Array, nil]
      #   use hash to describe specific errors like attributes;
      #   use array to describe abstract errors
      # @param payload [Object, nil]
      #   must be given with errors hash
      def initialize(code, errors = nil, payload = nil)
        @code = code
        @errors = errors
        @payload = payload
      end

      # @return [TrueClass]
      def failed?
        true
      end
    end
  end
end

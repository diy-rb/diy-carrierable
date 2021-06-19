# frozen_string_literal: true

require 'diy/carrierable/base_carrier'
require 'diy/carrierable/success_carrier'
require 'diy/carrierable/failure_carrier'

module DIY
  # Describes features adds ability to use carriers
  module Carrierable
    private

    # @param payload [Object, nil]
    # @return [Diy::Carrierable::SuccessCarrier]
    def success(payload = nil)
      DIY::Carrierable::SuccessCarrier.new(payload)
    end

    # @param code [Symbol]
    # @param errors [Hash, Array, nil]
    # @param payload [Object, nil]
    # @return [Diy::Carrierable::FailureCarrier]
    def failure(code, errors = nil, payload = nil)
      DIY::Carrierable::FailureCarrier.new(code, errors, payload)
    end
  end
end

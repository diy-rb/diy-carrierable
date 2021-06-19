# frozen_string_literal: true

module DIY
  module Carrierable
    # Describes base interface of any carrier
    class BaseCarrier
      # @return [Boolean]
      def successful?
        false
      end

      # @return [Boolean]
      def failed?
        false
      end

      # @return [Hash]
      def errors
        {}
      end
    end
  end
end

require 'topological_inventory/providers/common/metrics'

module Sources
  module Satellite
    module Operations
      class Metrics < TopologicalInventory::Providers::Common::Metrics
        ERROR_TYPES = %i[general sources_api].freeze
        OPERATIONS = %w[Source.availability_check].freeze

        def initialize(port = 9394)
          super(port)
        end

        def default_prefix
          "sources_satellite_operations_"
        end
      end
    end
  end
end

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2018_08_01
  module Models
    #
    # Application Gateway autoscale configuration.
    #
    class ApplicationGatewayAutoscaleConfiguration

      include MsRestAzure

      # @return [Integer] Lower bound on number of Application Gateway
      # instances
      attr_accessor :min_capacity


      #
      # Mapper for ApplicationGatewayAutoscaleConfiguration class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ApplicationGatewayAutoscaleConfiguration',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayAutoscaleConfiguration',
            model_properties: {
              min_capacity: {
                client_side_validation: true,
                required: true,
                serialized_name: 'minCapacity',
                constraints: {
                  InclusiveMinimum: 2
                },
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::TimeSeriesInsights::Mgmt::V2017_02_28_preview
  module Models
    #
    # The response of the List access policies operation.
    #
    class AccessPolicyListResponse

      include MsRestAzure

      # @return [Array<AccessPolicyResource>] Result of the List access
      # policies operation.
      attr_accessor :value


      #
      # Mapper for AccessPolicyListResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AccessPolicyListResponse',
          type: {
            name: 'Composite',
            class_name: 'AccessPolicyListResponse',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AccessPolicyResourceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AccessPolicyResource'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end

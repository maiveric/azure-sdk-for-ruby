# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Appconfiguration::Mgmt::V2019_02_01_preview
  module Models
    #
    # The result of a request to check the availability of a resource name.
    #
    class NameAvailabilityStatus

      include MsRestAzure

      # @return [Boolean] The value indicating whether the resource name is
      # available.
      attr_accessor :name_available

      # @return [String] If any, the error message that provides more detail
      # for the reason that the name is not available.
      attr_accessor :message

      # @return [String] If any, the reason that the name is not available.
      attr_accessor :reason


      #
      # Mapper for NameAvailabilityStatus class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NameAvailabilityStatus',
          type: {
            name: 'Composite',
            class_name: 'NameAvailabilityStatus',
            model_properties: {
              name_available: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nameAvailable',
                type: {
                  name: 'Boolean'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'reason',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
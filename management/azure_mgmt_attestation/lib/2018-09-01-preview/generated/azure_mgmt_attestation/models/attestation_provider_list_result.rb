# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Attestation::Mgmt::V2018_09_01_preview
  module Models
    #
    # Attestation Providers List.
    #
    class AttestationProviderListResult

      include MsRestAzure

      # @return [Array<AttestationProvider>] Attestation Provider array.
      attr_accessor :value


      #
      # Mapper for AttestationProviderListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AttestationProviderListResult',
          type: {
            name: 'Composite',
            class_name: 'AttestationProviderListResult',
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
                      serialized_name: 'AttestationProviderElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AttestationProvider'
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

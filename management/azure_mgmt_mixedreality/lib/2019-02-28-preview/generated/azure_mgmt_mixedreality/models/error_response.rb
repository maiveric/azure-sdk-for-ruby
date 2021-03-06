# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MixedReality::Mgmt::V2019_02_28_preview
  module Models
    #
    # Response on Error
    #
    class ErrorResponse

      include MsRestAzure

      # @return [String] Describes the error in detail and provides debugging
      # information
      attr_accessor :message

      # @return [String] String that can be used to programmatically identify
      # the error.
      attr_accessor :code

      # @return [String] The target of the particular error
      attr_accessor :target

      # @return [String] An array of JSON objects that MUST contain name/value
      # pairs for code and message, and MAY contain a name/value pair for
      # target, as described above.The contents of this section are
      # service-defined but must adhere to the aforementioned schema.
      attr_accessor :details


      #
      # Mapper for ErrorResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorResponse',
          type: {
            name: 'Composite',
            class_name: 'ErrorResponse',
            model_properties: {
              message: {
                client_side_validation: true,
                required: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              code: {
                client_side_validation: true,
                required: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details',
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

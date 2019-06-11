# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::LabServices::Mgmt::V2018_10_15
  module Models
    #
    # Represents the payload for resetting passwords.
    #
    class ResetPasswordPayload

      include MsRestAzure

      # @return [String] The resourceId of the environment
      attr_accessor :environment_id

      # @return [String] The username for which the password will be reset.
      attr_accessor :username

      # @return [String] The password to assign to the user specified in
      attr_accessor :password


      #
      # Mapper for ResetPasswordPayload class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ResetPasswordPayload',
          type: {
            name: 'Composite',
            class_name: 'ResetPasswordPayload',
            model_properties: {
              environment_id: {
                required: true,
                serialized_name: 'environmentId',
                type: {
                  name: 'String'
                }
              },
              username: {
                required: false,
                serialized_name: 'username',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'password',
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
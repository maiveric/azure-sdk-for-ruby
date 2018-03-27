# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Authorization::Mgmt::V2018_01_01_preview
  module Models
    #
    # Role Assignments filter
    #
    class RoleAssignmentFilter

      include MsRestAzure

      # @return [String] Returns role assignment of the specific principal.
      attr_accessor :principal_id

      # @return [Boolean] The Delegation flag for the roleassignment
      attr_accessor :can_delegate


      #
      # Mapper for RoleAssignmentFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RoleAssignmentFilter',
          type: {
            name: 'Composite',
            class_name: 'RoleAssignmentFilter',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              can_delegate: {
                client_side_validation: true,
                required: false,
                serialized_name: 'canDelegate',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end

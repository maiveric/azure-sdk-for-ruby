# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2019_06_15
  module Models
    #
    # Azure VM (Mercury) workload-specific backup policy.
    #
    class GenericProtectionPolicy < ProtectionPolicy

      include MsRestAzure


      def initialize
        @backupManagementType = "GenericProtectionPolicy"
      end

      attr_accessor :backupManagementType

      # @return [Array<SubProtectionPolicy>] List of sub-protection policies
      # which includes schedule and retention
      attr_accessor :sub_protection_policy

      # @return [String] TimeZone optional input as string. For example:
      # TimeZone = "Pacific Standard Time".
      attr_accessor :time_zone

      # @return [String] Name of this policy's fabric.
      attr_accessor :fabric_name


      #
      # Mapper for GenericProtectionPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GenericProtectionPolicy',
          type: {
            name: 'Composite',
            class_name: 'GenericProtectionPolicy',
            model_properties: {
              protected_items_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'protectedItemsCount',
                type: {
                  name: 'Number'
                }
              },
              backupManagementType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              sub_protection_policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'subProtectionPolicy',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SubProtectionPolicyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SubProtectionPolicy'
                      }
                  }
                }
              },
              time_zone: {
                client_side_validation: true,
                required: false,
                serialized_name: 'timeZone',
                type: {
                  name: 'String'
                }
              },
              fabric_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'fabricName',
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

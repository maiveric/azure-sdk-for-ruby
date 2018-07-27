# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 2.2.27.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2017_07_01
  module Models
    #
    # Details about target workload during restore operation.
    #
    class TargetRestoreInfo

      include MsRestAzure

      # @return [OverwriteOptions] Can Overwrite if Target DataBase already
      # exists. Possible values include: 'Invalid', 'FailOnConflict',
      # 'Overwrite'
      attr_accessor :overwrite_option

      # @return [String] Resource Id name of the container in which Target
      # DataBase resides
      attr_accessor :container_id

      # @return [String] Database name InstanceName/DataBaseName for SQL or
      # System/DbName for SAP Hana
      attr_accessor :database_name


      #
      # Mapper for TargetRestoreInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TargetRestoreInfo',
          type: {
            name: 'Composite',
            class_name: 'TargetRestoreInfo',
            model_properties: {
              overwrite_option: {
                client_side_validation: true,
                required: false,
                serialized_name: 'overwriteOption',
                type: {
                  name: 'String'
                }
              },
              container_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'containerId',
                type: {
                  name: 'String'
                }
              },
              database_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'databaseName',
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
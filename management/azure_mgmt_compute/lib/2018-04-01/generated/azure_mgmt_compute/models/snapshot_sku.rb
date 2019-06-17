# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2018_04_01
  module Models
    #
    # The snapshots sku name. Can be Standard_LRS, Premium_LRS, or
    # Standard_ZRS.
    #
    class SnapshotSku

      include MsRestAzure

      # @return [SnapshotStorageAccountTypes] The sku name. Possible values
      # include: 'Standard_LRS', 'Premium_LRS', 'Standard_ZRS'
      attr_accessor :name

      # @return [String] The sku tier. Default value: 'Standard' .
      attr_accessor :tier


      #
      # Mapper for SnapshotSku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SnapshotSku',
          type: {
            name: 'Composite',
            class_name: 'SnapshotSku',
            model_properties: {
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                read_only: true,
                serialized_name: 'tier',
                default_value: 'Standard',
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

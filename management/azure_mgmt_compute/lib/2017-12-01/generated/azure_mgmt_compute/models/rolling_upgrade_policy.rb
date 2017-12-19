# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_12_01
  module Models
    #
    # The configuration parameters used while performing a rolling upgrade.
    #
    class RollingUpgradePolicy

      include MsRestAzure

      # @return [Integer] The maximum percent of total virtual machine
      # instances that will be upgraded simultaneously by the rolling upgrade
      # in one batch. As this is a maximum, unhealthy instances in previous or
      # future batches can cause the percentage of instances in a batch to
      # decrease to ensure higher reliability. The default value for this
      # parameter is 20%.
      attr_accessor :max_batch_instance_percent

      # @return [Integer] The maximum percentage of the total virtual machine
      # instances in the scale set that can be simultaneously unhealthy, either
      # as a result of being upgraded, or by being found in an unhealthy state
      # by the virtual machine health checks before the rolling upgrade aborts.
      # This constraint will be checked prior to starting any batch. The
      # default value for this parameter is 20%.
      attr_accessor :max_unhealthy_instance_percent

      # @return [Integer] The maximum percentage of upgraded virtual machine
      # instances that can be found to be in an unhealthy state. This check
      # will happen after each batch is upgraded. If this percentage is ever
      # exceeded, the rolling update aborts. The default value for this
      # parameter is 20%.
      attr_accessor :max_unhealthy_upgraded_instance_percent

      # @return [String] The wait time between completing the update for all
      # virtual machines in one batch and starting the next batch. The time
      # duration should be specified in ISO 8601 format. The default value is 0
      # seconds (PT0S).
      attr_accessor :pause_time_between_batches


      #
      # Mapper for RollingUpgradePolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RollingUpgradePolicy',
          type: {
            name: 'Composite',
            class_name: 'RollingUpgradePolicy',
            model_properties: {
              max_batch_instance_percent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxBatchInstancePercent',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 5
                },
                type: {
                  name: 'Number'
                }
              },
              max_unhealthy_instance_percent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxUnhealthyInstancePercent',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 5
                },
                type: {
                  name: 'Number'
                }
              },
              max_unhealthy_upgraded_instance_percent: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxUnhealthyUpgradedInstancePercent',
                constraints: {
                  InclusiveMaximum: 100,
                  InclusiveMinimum: 0
                },
                type: {
                  name: 'Number'
                }
              },
              pause_time_between_batches: {
                client_side_validation: true,
                required: false,
                serialized_name: 'pauseTimeBetweenBatches',
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

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # An object to provide order by options for listing runs.
    #
    class RunQueryOrderBy

      include MsRestAzure

      # @return [RunQueryOrderByField] Parameter name to be used for order by.
      # The allowed parameters to order by for pipeline runs are PipelineName,
      # RunStart, RunEnd and Status; for activity runs are ActivityName,
      # ActivityRunStart, ActivityRunEnd and Status; for trigger runs are
      # TriggerName, TriggerRunTimestamp and Status. Possible values include:
      # 'RunStart', 'RunEnd', 'PipelineName', 'Status', 'ActivityName',
      # 'ActivityRunStart', 'ActivityRunEnd', 'TriggerName',
      # 'TriggerRunTimestamp'
      attr_accessor :order_by

      # @return [RunQueryOrder] Sorting order of the parameter. Possible values
      # include: 'ASC', 'DESC'
      attr_accessor :order


      #
      # Mapper for RunQueryOrderBy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RunQueryOrderBy',
          type: {
            name: 'Composite',
            class_name: 'RunQueryOrderBy',
            model_properties: {
              order_by: {
                client_side_validation: true,
                required: true,
                serialized_name: 'orderBy',
                type: {
                  name: 'String'
                }
              },
              order: {
                client_side_validation: true,
                required: true,
                serialized_name: 'order',
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
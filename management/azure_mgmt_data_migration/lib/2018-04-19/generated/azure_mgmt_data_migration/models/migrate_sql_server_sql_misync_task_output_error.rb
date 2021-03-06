# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Model object.
    #
    #
    class MigrateSqlServerSqlMISyncTaskOutputError < MigrateSqlServerSqlMISyncTaskOutput

      include MsRestAzure


      def initialize
        @resultType = "ErrorOutput"
      end

      attr_accessor :resultType

      # @return [ReportableException] Migration error
      attr_accessor :error


      #
      # Mapper for MigrateSqlServerSqlMISyncTaskOutputError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ErrorOutput',
          type: {
            name: 'Composite',
            class_name: 'MigrateSqlServerSqlMISyncTaskOutputError',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              resultType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'resultType',
                type: {
                  name: 'String'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ReportableException'
                }
              }
            }
          }
        }
      end
    end
  end
end

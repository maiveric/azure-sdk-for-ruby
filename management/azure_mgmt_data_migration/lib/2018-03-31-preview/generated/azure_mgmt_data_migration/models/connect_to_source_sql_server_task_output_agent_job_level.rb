# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_31_preview
  module Models
    #
    # AgentJob level output for the task that validates connection to SQL
    # Server and also validates source server requirements
    #
    class ConnectToSourceSqlServerTaskOutputAgentJobLevel < ConnectToSourceSqlServerTaskOutput

      include MsRestAzure


      def initialize
        @resultType = "AgentJobLevelOutput"
      end

      attr_accessor :resultType

      # @return [String] AgentJob name
      attr_accessor :name

      # @return [String] The type of AgentJob.
      attr_accessor :job_category

      # @return [Boolean] The state of the original AgentJob.
      attr_accessor :is_enabled

      # @return [String] The owner of the AgentJob
      attr_accessor :job_owner

      # @return [DateTime] UTC Date and time when the AgentJob was last
      # executed.
      attr_accessor :last_executed_on

      # @return [MigrationEligibilityInfo] Information about eligiblity of
      # agent job for migration.
      attr_accessor :migration_eligibility


      #
      # Mapper for ConnectToSourceSqlServerTaskOutputAgentJobLevel class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AgentJobLevelOutput',
          type: {
            name: 'Composite',
            class_name: 'ConnectToSourceSqlServerTaskOutputAgentJobLevel',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              job_category: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'jobCategory',
                type: {
                  name: 'String'
                }
              },
              is_enabled: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isEnabled',
                type: {
                  name: 'Boolean'
                }
              },
              job_owner: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'jobOwner',
                type: {
                  name: 'String'
                }
              },
              last_executed_on: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'lastExecutedOn',
                type: {
                  name: 'DateTime'
                }
              },
              migration_eligibility: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'migrationEligibility',
                type: {
                  name: 'Composite',
                  class_name: 'MigrationEligibilityInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end
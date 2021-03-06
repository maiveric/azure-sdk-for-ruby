# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # A copy activity SQL server source.
    #
    class SqlServerSource < TabularSource

      include MsRestAzure


      def initialize
        @type = "SqlServerSource"
      end

      attr_accessor :type

      # @return SQL reader query. Type: string (or Expression with resultType
      # string).
      attr_accessor :sql_reader_query

      # @return Name of the stored procedure for a SQL Database source. This
      # cannot be used at the same time as SqlReaderQuery. Type: string (or
      # Expression with resultType string).
      attr_accessor :sql_reader_stored_procedure_name

      # @return [Hash{String => StoredProcedureParameter}] Value and type
      # setting for stored procedure parameters. Example: "{Parameter1: {value:
      # "1", type: "int"}}".
      attr_accessor :stored_procedure_parameters

      # @return Which additional types to produce.
      attr_accessor :produce_additional_types


      #
      # Mapper for SqlServerSource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SqlServerSource',
          type: {
            name: 'Composite',
            class_name: 'SqlServerSource',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              source_retry_count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryCount',
                type: {
                  name: 'Object'
                }
              },
              source_retry_wait: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceRetryWait',
                type: {
                  name: 'Object'
                }
              },
              max_concurrent_connections: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxConcurrentConnections',
                type: {
                  name: 'Object'
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              query_timeout: {
                client_side_validation: true,
                required: false,
                serialized_name: 'queryTimeout',
                type: {
                  name: 'Object'
                }
              },
              additional_columns: {
                client_side_validation: true,
                required: false,
                serialized_name: 'additionalColumns',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'AdditionalColumnsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AdditionalColumns'
                      }
                  }
                }
              },
              sql_reader_query: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sqlReaderQuery',
                type: {
                  name: 'Object'
                }
              },
              sql_reader_stored_procedure_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sqlReaderStoredProcedureName',
                type: {
                  name: 'Object'
                }
              },
              stored_procedure_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'storedProcedureParameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StoredProcedureParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'StoredProcedureParameter'
                      }
                  }
                }
              },
              produce_additional_types: {
                client_side_validation: true,
                required: false,
                serialized_name: 'produceAdditionalTypes',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end

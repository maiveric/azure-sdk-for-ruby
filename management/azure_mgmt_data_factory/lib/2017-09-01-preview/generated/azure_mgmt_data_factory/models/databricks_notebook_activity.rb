# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # DatabricksNotebook activity.
    #
    class DatabricksNotebookActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "DatabricksNotebook"
      end

      attr_accessor :type

      # @return The absolute path of the notebook to be run in the Databricks
      # Workspace. This path must begin with a slash. Type: string (or
      # Expression with resultType string).
      attr_accessor :notebook_path

      # @return Base parameters to be used for each run of this job.If the
      # notebook takes a parameter that is not specified, the default value
      # from the notebook will be used.
      attr_accessor :base_parameters


      #
      # Mapper for DatabricksNotebookActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabricksNotebook',
          type: {
            name: 'Composite',
            class_name: 'DatabricksNotebookActivity',
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
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
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
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              notebook_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.notebookPath',
                type: {
                  name: 'Object'
                }
              },
              base_parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.baseParameters',
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
              }
            }
          }
        }
      end
    end
  end
end
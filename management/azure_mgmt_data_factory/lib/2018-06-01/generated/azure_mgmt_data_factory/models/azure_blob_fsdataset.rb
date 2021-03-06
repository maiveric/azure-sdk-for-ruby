# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2018_06_01
  module Models
    #
    # The Azure Data Lake Storage Gen2 storage.
    #
    class AzureBlobFSDataset < Dataset

      include MsRestAzure


      def initialize
        @type = "AzureBlobFSFile"
      end

      attr_accessor :type

      # @return The path of the Azure Data Lake Storage Gen2 storage. Type:
      # string (or Expression with resultType string).
      attr_accessor :folder_path

      # @return The name of the Azure Data Lake Storage Gen2. Type: string (or
      # Expression with resultType string).
      attr_accessor :file_name

      # @return [DatasetStorageFormat] The format of the Azure Data Lake
      # Storage Gen2 storage.
      attr_accessor :format

      # @return [DatasetCompression] The data compression method used for the
      # blob storage.
      attr_accessor :compression


      #
      # Mapper for AzureBlobFSDataset class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AzureBlobFSFile',
          type: {
            name: 'Composite',
            class_name: 'AzureBlobFSDataset',
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
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              structure: {
                client_side_validation: true,
                required: false,
                serialized_name: 'structure',
                type: {
                  name: 'Object'
                }
              },
              schema: {
                client_side_validation: true,
                required: false,
                serialized_name: 'schema',
                type: {
                  name: 'Object'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'linkedServiceName',
                default_value: {},
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              parameters: {
                client_side_validation: true,
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ParameterSpecificationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ParameterSpecification'
                      }
                  }
                }
              },
              annotations: {
                client_side_validation: true,
                required: false,
                serialized_name: 'annotations',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              folder: {
                client_side_validation: true,
                required: false,
                serialized_name: 'folder',
                type: {
                  name: 'Composite',
                  class_name: 'DatasetFolder'
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
              folder_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.folderPath',
                type: {
                  name: 'Object'
                }
              },
              file_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.fileName',
                type: {
                  name: 'Object'
                }
              },
              format: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.format',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'DatasetStorageFormat',
                  class_name: 'DatasetStorageFormat'
                }
              },
              compression: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.compression',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'DatasetCompression',
                  class_name: 'DatasetCompression'
                }
              }
            }
          }
        }
      end
    end
  end
end

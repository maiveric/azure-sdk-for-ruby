# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes a stateless service type defined in the service manifest of a
    # provisioned application type.
    #
    class StatelessServiceTypeDescription < ServiceTypeDescription

      include MsRestAzure


      def initialize
        @Kind = "Stateless"
      end

      attr_accessor :Kind

      # @return [Boolean] A flag indicating if this type is not implemented and
      # hosted by a user service process, but is implicitly hosted by a system
      # created process. This value is true for services using the guest
      # executable services, false otherwise.
      attr_accessor :use_implicit_host


      #
      # Mapper for StatelessServiceTypeDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateless',
          type: {
            name: 'Composite',
            class_name: 'StatelessServiceTypeDescription',
            model_properties: {
              is_stateful: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsStateful',
                type: {
                  name: 'Boolean'
                }
              },
              service_type_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceTypeName',
                type: {
                  name: 'String'
                }
              },
              placement_constraints: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PlacementConstraints',
                type: {
                  name: 'String'
                }
              },
              load_metrics: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LoadMetrics',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceLoadMetricDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceLoadMetricDescription'
                      }
                  }
                }
              },
              service_placement_policies: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePlacementPolicies',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServicePlacementPolicyDescriptionElementType',
                      type: {
                        name: 'Composite',
                        polymorphic_discriminator: 'Type',
                        uber_parent: 'ServicePlacementPolicyDescription',
                        class_name: 'ServicePlacementPolicyDescription'
                      }
                  }
                }
              },
              extensions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Extensions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceTypeExtensionDescriptionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceTypeExtensionDescription'
                      }
                  }
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              use_implicit_host: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UseImplicitHost',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_5_0_36
  module Models
    #
    # Describes the policy to be used for placement of a Service Fabric service
    # where the instances or replicas of that service must be placed in a
    # particular domain
    #
    class ServicePlacementRequiredDomainPolicyDescription < ServicePlacementPolicyDescription

      include MsRestAzure


      def initialize
        @Type = "RequireDomain"
      end

      attr_accessor :Type

      # @return [String] The name of the domain that should used for placement
      # as per this policy.
      attr_accessor :domain_name


      #
      # Mapper for ServicePlacementRequiredDomainPolicyDescription class as
      # Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RequireDomain',
          type: {
            name: 'Composite',
            class_name: 'ServicePlacementRequiredDomainPolicyDescription',
            model_properties: {
              Type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Type',
                type: {
                  name: 'String'
                }
              },
              domain_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'DomainName',
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
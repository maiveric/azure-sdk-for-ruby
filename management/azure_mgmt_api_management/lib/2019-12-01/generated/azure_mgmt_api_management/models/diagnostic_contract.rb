# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2019_12_01
  module Models
    #
    # Diagnostic details.
    #
    class DiagnosticContract < Resource

      include MsRestAzure

      # @return [AlwaysLog] Specifies for what type of messages sampling
      # settings should not apply. Possible values include: 'allErrors'
      attr_accessor :always_log

      # @return [String] Resource Id of a target logger.
      attr_accessor :logger_id

      # @return [SamplingSettings] Sampling settings for Diagnostic.
      attr_accessor :sampling

      # @return [PipelineDiagnosticSettings] Diagnostic settings for
      # incoming/outgoing HTTP messages to the Gateway.
      attr_accessor :frontend

      # @return [PipelineDiagnosticSettings] Diagnostic settings for
      # incoming/outgoing HTTP messages to the Backend
      attr_accessor :backend

      # @return [Boolean] Log the ClientIP. Default is false.
      attr_accessor :log_client_ip

      # @return [HttpCorrelationProtocol] Sets correlation protocol to use for
      # Application Insights diagnostics. Possible values include: 'None',
      # 'Legacy', 'W3C'
      attr_accessor :http_correlation_protocol

      # @return [Verbosity] The verbosity level applied to traces emitted by
      # trace policies. Possible values include: 'verbose', 'information',
      # 'error'
      attr_accessor :verbosity


      #
      # Mapper for DiagnosticContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DiagnosticContract',
          type: {
            name: 'Composite',
            class_name: 'DiagnosticContract',
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
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              always_log: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.alwaysLog',
                type: {
                  name: 'String'
                }
              },
              logger_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.loggerId',
                type: {
                  name: 'String'
                }
              },
              sampling: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.sampling',
                type: {
                  name: 'Composite',
                  class_name: 'SamplingSettings'
                }
              },
              frontend: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.frontend',
                type: {
                  name: 'Composite',
                  class_name: 'PipelineDiagnosticSettings'
                }
              },
              backend: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.backend',
                type: {
                  name: 'Composite',
                  class_name: 'PipelineDiagnosticSettings'
                }
              },
              log_client_ip: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.logClientIp',
                type: {
                  name: 'Boolean'
                }
              },
              http_correlation_protocol: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.httpCorrelationProtocol',
                type: {
                  name: 'String'
                }
              },
              verbosity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.verbosity',
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

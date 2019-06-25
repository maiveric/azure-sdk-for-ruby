# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_cognitiveservices_localsearch'

module Azure::Profiles::Latest
  module LocalSearch
    Local = Azure::CognitiveServices::LocalSearch::V1_0::Local

    module Models
      ErrorCode = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorCode
      SafeSearch = Azure::CognitiveServices::LocalSearch::V1_0::Models::SafeSearch
      ResponseFormat = Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseFormat
      EntityScenario = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityScenario
      ErrorSubCode = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorSubCode
      ErrorResponse = Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorResponse
      Response = Azure::CognitiveServices::LocalSearch::V1_0::Models::Response
      SearchResponse = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResponse
      EntitiesEntityPresentationInfo = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntitiesEntityPresentationInfo
      Action = Azure::CognitiveServices::LocalSearch::V1_0::Models::Action
      PostalAddress = Azure::CognitiveServices::LocalSearch::V1_0::Models::PostalAddress
      Place = Azure::CognitiveServices::LocalSearch::V1_0::Models::Place
      Places = Azure::CognitiveServices::LocalSearch::V1_0::Models::Places
      Intangible = Azure::CognitiveServices::LocalSearch::V1_0::Models::Intangible
      QueryContext = Azure::CognitiveServices::LocalSearch::V1_0::Models::QueryContext
      GeoCoordinates = Azure::CognitiveServices::LocalSearch::V1_0::Models::GeoCoordinates
      EntityType = Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityType
      ResponseBase = Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseBase
      Answer = Azure::CognitiveServices::LocalSearch::V1_0::Models::Answer
      StructuredValue = Azure::CognitiveServices::LocalSearch::V1_0::Models::StructuredValue
      Thing = Azure::CognitiveServices::LocalSearch::V1_0::Models::Thing
      SearchResultsAnswer = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResultsAnswer
      CreativeWork = Azure::CognitiveServices::LocalSearch::V1_0::Models::CreativeWork
      Identifiable = Azure::CognitiveServices::LocalSearch::V1_0::Models::Identifiable
      Error = Azure::CognitiveServices::LocalSearch::V1_0::Models::Error
      SearchAction = Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchAction
    end

    class LocalSearchDataClass
      attr_reader :local, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        @client_0 = Azure::CognitiveServices::LocalSearch::V1_0::LocalSearchClient.new(configurable.credentials, base_url, options)
        if(@client_0.respond_to?(:subscription_id))
          @client_0.subscription_id = configurable.subscription_id
        end
        add_telemetry(@client_0)
        @local = @client_0.local

        @model_classes = ModelClasses.new
      end

      def add_telemetry(client)
        profile_information = "Profiles/azure_sdk/#{Azure::VERSION}/Latest/LocalSearch"
        client.add_user_agent_information(profile_information)
      end

      def method_missing(method, *args)
        if @client_0.respond_to?method
          @client_0.send(method, *args)
        else
          super
        end
      end

      class ModelClasses
        def error_code
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorCode
        end
        def safe_search
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SafeSearch
        end
        def response_format
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseFormat
        end
        def entity_scenario
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityScenario
        end
        def error_sub_code
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorSubCode
        end
        def error_response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ErrorResponse
        end
        def response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Response
        end
        def search_response
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResponse
        end
        def entities_entity_presentation_info
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntitiesEntityPresentationInfo
        end
        def action
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Action
        end
        def postal_address
          Azure::CognitiveServices::LocalSearch::V1_0::Models::PostalAddress
        end
        def place
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Place
        end
        def places
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Places
        end
        def intangible
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Intangible
        end
        def query_context
          Azure::CognitiveServices::LocalSearch::V1_0::Models::QueryContext
        end
        def geo_coordinates
          Azure::CognitiveServices::LocalSearch::V1_0::Models::GeoCoordinates
        end
        def entity_type
          Azure::CognitiveServices::LocalSearch::V1_0::Models::EntityType
        end
        def response_base
          Azure::CognitiveServices::LocalSearch::V1_0::Models::ResponseBase
        end
        def answer
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Answer
        end
        def structured_value
          Azure::CognitiveServices::LocalSearch::V1_0::Models::StructuredValue
        end
        def thing
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Thing
        end
        def search_results_answer
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchResultsAnswer
        end
        def creative_work
          Azure::CognitiveServices::LocalSearch::V1_0::Models::CreativeWork
        end
        def identifiable
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Identifiable
        end
        def error
          Azure::CognitiveServices::LocalSearch::V1_0::Models::Error
        end
        def search_action
          Azure::CognitiveServices::LocalSearch::V1_0::Models::SearchAction
        end
      end
    end
  end
end

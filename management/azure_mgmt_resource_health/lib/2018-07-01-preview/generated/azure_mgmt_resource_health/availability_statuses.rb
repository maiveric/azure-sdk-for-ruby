# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ResourceHealth::Mgmt::V2018_08_01_preview
  #
  # The Resource Health Client.
  #
  class AvailabilityStatuses
    include MsRestAzure

    #
    # Creates and initializes a new instance of the AvailabilityStatuses class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ResourceHealthClient] reference to the ResourceHealthClient
    attr_reader :client

    #
    # Lists the current availability status for all the resources in the
    # subscription.
    #
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<AvailabilityStatus>] operation results.
    #
    def list_by_subscription_id(filter:nil, expand:nil, custom_headers:nil)
      first_page = list_by_subscription_id_as_lazy(filter:filter, expand:expand, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the current availability status for all the resources in the
    # subscription.
    #
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_subscription_id_with_http_info(filter:nil, expand:nil, custom_headers:nil)
      list_by_subscription_id_async(filter:filter, expand:expand, custom_headers:custom_headers).value!
    end

    #
    # Lists the current availability status for all the resources in the
    # subscription.
    #
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_subscription_id_async(filter:nil, expand:nil, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.ResourceHealth/availabilityStatuses'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$expand' => expand},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ResourceHealth::Mgmt::V2018_08_01_preview::Models::AvailabilityStatusListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the current availability status for all the resources in the resource
    # group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<AvailabilityStatus>] operation results.
    #
    def list_by_resource_group(resource_group_name, filter:nil, expand:nil, custom_headers:nil)
      first_page = list_by_resource_group_as_lazy(resource_group_name, filter:filter, expand:expand, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the current availability status for all the resources in the resource
    # group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_resource_group_with_http_info(resource_group_name, filter:nil, expand:nil, custom_headers:nil)
      list_by_resource_group_async(resource_group_name, filter:filter, expand:expand, custom_headers:custom_headers).value!
    end

    #
    # Lists the current availability status for all the resources in the resource
    # group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_resource_group_async(resource_group_name, filter:nil, expand:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ResourceHealth/availabilityStatuses'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$expand' => expand},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ResourceHealth::Mgmt::V2018_08_01_preview::Models::AvailabilityStatusListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets current availability status for a single resource
    #
    # @param resource_uri [String] The fully qualified ID of the resource,
    # including the resource name and resource type. Currently the API support not
    # nested and one nesting level resource types :
    # /subscriptions/{subscriptionId}/resourceGroups/{resource-group-name}/providers/{resource-provider-name}/{resource-type}/{resource-name}
    # and
    # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resource-provider-name}/{parentResourceType}/{parentResourceName}/{resourceType}/{resourceName}
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilityStatus] operation results.
    #
    def get_by_resource(resource_uri, filter:nil, expand:nil, custom_headers:nil)
      response = get_by_resource_async(resource_uri, filter:filter, expand:expand, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets current availability status for a single resource
    #
    # @param resource_uri [String] The fully qualified ID of the resource,
    # including the resource name and resource type. Currently the API support not
    # nested and one nesting level resource types :
    # /subscriptions/{subscriptionId}/resourceGroups/{resource-group-name}/providers/{resource-provider-name}/{resource-type}/{resource-name}
    # and
    # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resource-provider-name}/{parentResourceType}/{parentResourceName}/{resourceType}/{resourceName}
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_resource_with_http_info(resource_uri, filter:nil, expand:nil, custom_headers:nil)
      get_by_resource_async(resource_uri, filter:filter, expand:expand, custom_headers:custom_headers).value!
    end

    #
    # Gets current availability status for a single resource
    #
    # @param resource_uri [String] The fully qualified ID of the resource,
    # including the resource name and resource type. Currently the API support not
    # nested and one nesting level resource types :
    # /subscriptions/{subscriptionId}/resourceGroups/{resource-group-name}/providers/{resource-provider-name}/{resource-type}/{resource-name}
    # and
    # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resource-provider-name}/{parentResourceType}/{parentResourceName}/{resourceType}/{resourceName}
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_resource_async(resource_uri, filter:nil, expand:nil, custom_headers:nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceUri}/providers/Microsoft.ResourceHealth/availabilityStatuses/current'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'resourceUri' => resource_uri},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$expand' => expand},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ResourceHealth::Mgmt::V2018_08_01_preview::Models::AvailabilityStatus.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all historical availability transitions and impacting events for a
    # single resource.
    #
    # @param resource_uri [String] The fully qualified ID of the resource,
    # including the resource name and resource type. Currently the API support not
    # nested and one nesting level resource types :
    # /subscriptions/{subscriptionId}/resourceGroups/{resource-group-name}/providers/{resource-provider-name}/{resource-type}/{resource-name}
    # and
    # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resource-provider-name}/{parentResourceType}/{parentResourceName}/{resourceType}/{resourceName}
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<AvailabilityStatus>] operation results.
    #
    def list(resource_uri, filter:nil, expand:nil, custom_headers:nil)
      first_page = list_as_lazy(resource_uri, filter:filter, expand:expand, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Lists all historical availability transitions and impacting events for a
    # single resource.
    #
    # @param resource_uri [String] The fully qualified ID of the resource,
    # including the resource name and resource type. Currently the API support not
    # nested and one nesting level resource types :
    # /subscriptions/{subscriptionId}/resourceGroups/{resource-group-name}/providers/{resource-provider-name}/{resource-type}/{resource-name}
    # and
    # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resource-provider-name}/{parentResourceType}/{parentResourceName}/{resourceType}/{resourceName}
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(resource_uri, filter:nil, expand:nil, custom_headers:nil)
      list_async(resource_uri, filter:filter, expand:expand, custom_headers:custom_headers).value!
    end

    #
    # Lists all historical availability transitions and impacting events for a
    # single resource.
    #
    # @param resource_uri [String] The fully qualified ID of the resource,
    # including the resource name and resource type. Currently the API support not
    # nested and one nesting level resource types :
    # /subscriptions/{subscriptionId}/resourceGroups/{resource-group-name}/providers/{resource-provider-name}/{resource-type}/{resource-name}
    # and
    # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resource-provider-name}/{parentResourceType}/{parentResourceName}/{resourceType}/{resourceName}
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(resource_uri, filter:nil, expand:nil, custom_headers:nil)
      fail ArgumentError, 'resource_uri is nil' if resource_uri.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{resourceUri}/providers/Microsoft.ResourceHealth/availabilityStatuses'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'resourceUri' => resource_uri},
          query_params: {'api-version' => @client.api_version,'$filter' => filter,'$expand' => expand},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ResourceHealth::Mgmt::V2018_08_01_preview::Models::AvailabilityStatusListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the current availability status for all the resources in the
    # subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilityStatusListResult] operation results.
    #
    def list_by_subscription_id_next(next_page_link, custom_headers:nil)
      response = list_by_subscription_id_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the current availability status for all the resources in the
    # subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_subscription_id_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_subscription_id_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the current availability status for all the resources in the
    # subscription.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_subscription_id_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ResourceHealth::Mgmt::V2018_08_01_preview::Models::AvailabilityStatusListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the current availability status for all the resources in the resource
    # group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilityStatusListResult] operation results.
    #
    def list_by_resource_group_next(next_page_link, custom_headers:nil)
      response = list_by_resource_group_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the current availability status for all the resources in the resource
    # group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_resource_group_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_resource_group_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists the current availability status for all the resources in the resource
    # group.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_resource_group_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ResourceHealth::Mgmt::V2018_08_01_preview::Models::AvailabilityStatusListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists all historical availability transitions and impacting events for a
    # single resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilityStatusListResult] operation results.
    #
    def list_next(next_page_link, custom_headers:nil)
      response = list_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists all historical availability transitions and impacting events for a
    # single resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers:nil)
      list_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Lists all historical availability transitions and impacting events for a
    # single resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ResourceHealth::Mgmt::V2018_08_01_preview::Models::AvailabilityStatusListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Lists the current availability status for all the resources in the
    # subscription.
    #
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilityStatusListResult] which provide lazy access to pages of
    # the response.
    #
    def list_by_subscription_id_as_lazy(filter:nil, expand:nil, custom_headers:nil)
      response = list_by_subscription_id_async(filter:filter, expand:expand, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_subscription_id_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Lists the current availability status for all the resources in the resource
    # group.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilityStatusListResult] which provide lazy access to pages of
    # the response.
    #
    def list_by_resource_group_as_lazy(resource_group_name, filter:nil, expand:nil, custom_headers:nil)
      response = list_by_resource_group_async(resource_group_name, filter:filter, expand:expand, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_resource_group_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

    #
    # Lists all historical availability transitions and impacting events for a
    # single resource.
    #
    # @param resource_uri [String] The fully qualified ID of the resource,
    # including the resource name and resource type. Currently the API support not
    # nested and one nesting level resource types :
    # /subscriptions/{subscriptionId}/resourceGroups/{resource-group-name}/providers/{resource-provider-name}/{resource-type}/{resource-name}
    # and
    # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resource-provider-name}/{parentResourceType}/{parentResourceName}/{resourceType}/{resourceName}
    # @param filter [String] The filter to apply on the operation. For more
    # information please see
    # https://docs.microsoft.com/en-us/rest/api/apimanagement/apis?redirectedfrom=MSDN
    # @param expand [String] Setting $expand=recommendedactions in url query
    # expands the recommendedactions in the response.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [AvailabilityStatusListResult] which provide lazy access to pages of
    # the response.
    #
    def list_as_lazy(resource_uri, filter:nil, expand:nil, custom_headers:nil)
      response = list_async(resource_uri, filter:filter, expand:expand, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end

# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Consumption::Mgmt::V2018_03_31
  #
  # Consumption management client provides access to consumption resources for
  # Azure Enterprise Subscriptions.
  #
  class PriceSheet
    include MsRestAzure

    #
    # Creates and initializes a new instance of the PriceSheet class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ConsumptionManagementClient] reference to the ConsumptionManagementClient
    attr_reader :client

    #
    # Gets the price sheet for a scope by subscriptionId. Price sheet is available
    # via this API only for May 1, 2014 or later.
    #
    # @param expand [String] May be used to expand the properties/meterDetails
    # within a price sheet. By default, these fields are not included when
    # returning price sheet.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the top N
    # results.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PriceSheetResult] operation results.
    #
    def get(expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      response = get_async(expand:expand, skiptoken:skiptoken, top:top, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the price sheet for a scope by subscriptionId. Price sheet is available
    # via this API only for May 1, 2014 or later.
    #
    # @param expand [String] May be used to expand the properties/meterDetails
    # within a price sheet. By default, these fields are not included when
    # returning price sheet.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the top N
    # results.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      get_async(expand:expand, skiptoken:skiptoken, top:top, custom_headers:custom_headers).value!
    end

    #
    # Gets the price sheet for a scope by subscriptionId. Price sheet is available
    # via this API only for May 1, 2014 or later.
    #
    # @param expand [String] May be used to expand the properties/meterDetails
    # within a price sheet. By default, these fields are not included when
    # returning price sheet.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the top N
    # results.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMaximum': '1000'" if !top.nil? && top > 1000
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Consumption/pricesheets/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id},
          query_params: {'$expand' => expand,'$skiptoken' => skiptoken,'$top' => top,'api-version' => @client.api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2018_03_31::Models::PriceSheetResult.mapper()
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
    # Get the price sheet for a scope by subscriptionId and billing period. Price
    # sheet is available via this API only for May 1, 2014 or later.
    #
    # @param billing_period_name [String] Billing Period Name.
    # @param expand [String] May be used to expand the properties/meterDetails
    # within a price sheet. By default, these fields are not included when
    # returning price sheet.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the top N
    # results.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PriceSheetResult] operation results.
    #
    def get_by_billing_period(billing_period_name, expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      response = get_by_billing_period_async(billing_period_name, expand:expand, skiptoken:skiptoken, top:top, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get the price sheet for a scope by subscriptionId and billing period. Price
    # sheet is available via this API only for May 1, 2014 or later.
    #
    # @param billing_period_name [String] Billing Period Name.
    # @param expand [String] May be used to expand the properties/meterDetails
    # within a price sheet. By default, these fields are not included when
    # returning price sheet.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the top N
    # results.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_by_billing_period_with_http_info(billing_period_name, expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      get_by_billing_period_async(billing_period_name, expand:expand, skiptoken:skiptoken, top:top, custom_headers:custom_headers).value!
    end

    #
    # Get the price sheet for a scope by subscriptionId and billing period. Price
    # sheet is available via this API only for May 1, 2014 or later.
    #
    # @param billing_period_name [String] Billing Period Name.
    # @param expand [String] May be used to expand the properties/meterDetails
    # within a price sheet. By default, these fields are not included when
    # returning price sheet.
    # @param skiptoken [String] Skiptoken is only used if a previous operation
    # returned a partial result. If a previous response contains a nextLink
    # element, the value of the nextLink element will include a skiptoken parameter
    # that specifies a starting point to use for subsequent calls.
    # @param top [Integer] May be used to limit the number of results to the top N
    # results.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_by_billing_period_async(billing_period_name, expand:nil, skiptoken:nil, top:nil, custom_headers:nil)
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMaximum': '1000'" if !top.nil? && top > 1000
      fail ArgumentError, "'top' should satisfy the constraint - 'InclusiveMinimum': '1'" if !top.nil? && top < 1
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'billing_period_name is nil' if billing_period_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.Billing/billingPeriods/{billingPeriodName}/providers/Microsoft.Consumption/pricesheets/default'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'billingPeriodName' => billing_period_name},
          query_params: {'$expand' => expand,'$skiptoken' => skiptoken,'$top' => top,'api-version' => @client.api_version},
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
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Consumption::Mgmt::V2018_03_31::Models::PriceSheetResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
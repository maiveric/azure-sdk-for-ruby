# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2018_03_01/compute_module_definition'
require 'profiles/v2018_03_01/modules/compute_profile_module'

module Azure::Compute::Profiles::V2018_03_01
  module Mgmt
    #
    # Client class for the V2018_03_01 profile SDK.
    #
    class Client < ComputeManagementClass
      include MsRestAzure::Common::Configurable

      #
      # Initializes a new instance of the Client class.
      # @param options [Hash] hash of client options.
      #    options = {
      #      tenant_id: 'YOUR TENANT ID',
      #      client_id: 'YOUR CLIENT ID',
      #      client_secret: 'YOUR CLIENT SECRET',
      #      subscription_id: 'YOUR SUBSCRIPTION ID',
      #      credentials: credentials,
      #      active_directory_settings: active_directory_settings,
      #      base_url: 'YOUR BASE URL',
      #      options: options
      #    }
      #   'credentials' are optional and if not passed in the hash, will be obtained
      #   from MsRest::TokenCredentials using MsRestAzure::ApplicationTokenProvider.
      #
      #   Also, base_url, active_directory_settings & options are optional.
      #
      def initialize(options = {})
        super(options)
      end

    end
  end
end

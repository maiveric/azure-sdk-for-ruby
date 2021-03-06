# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2018-01-31/generated/azure_mgmt_consumption/module_definition'
require 'ms_rest_azure'

module Azure::Consumption::Mgmt::V2018_01_31
  autoload :UsageDetails,                                       '2018-01-31/generated/azure_mgmt_consumption/usage_details.rb'
  autoload :Marketplaces,                                       '2018-01-31/generated/azure_mgmt_consumption/marketplaces.rb'
  autoload :ReservationsSummaries,                              '2018-01-31/generated/azure_mgmt_consumption/reservations_summaries.rb'
  autoload :ReservationsDetails,                                '2018-01-31/generated/azure_mgmt_consumption/reservations_details.rb'
  autoload :Budgets,                                            '2018-01-31/generated/azure_mgmt_consumption/budgets.rb'
  autoload :Operations,                                         '2018-01-31/generated/azure_mgmt_consumption/operations.rb'
  autoload :PriceSheet,                                         '2018-01-31/generated/azure_mgmt_consumption/price_sheet.rb'
  autoload :ConsumptionManagementClient,                        '2018-01-31/generated/azure_mgmt_consumption/consumption_management_client.rb'

  module Models
    autoload :Notification,                                       '2018-01-31/generated/azure_mgmt_consumption/models/notification.rb'
    autoload :MeterDetails,                                       '2018-01-31/generated/azure_mgmt_consumption/models/meter_details.rb'
    autoload :Filters,                                            '2018-01-31/generated/azure_mgmt_consumption/models/filters.rb'
    autoload :UsageDetailsListResult,                             '2018-01-31/generated/azure_mgmt_consumption/models/usage_details_list_result.rb'
    autoload :CurrentSpend,                                       '2018-01-31/generated/azure_mgmt_consumption/models/current_spend.rb'
    autoload :MarketplacesListResult,                             '2018-01-31/generated/azure_mgmt_consumption/models/marketplaces_list_result.rb'
    autoload :OperationListResult,                                '2018-01-31/generated/azure_mgmt_consumption/models/operation_list_result.rb'
    autoload :ReservationSummariesListResult,                     '2018-01-31/generated/azure_mgmt_consumption/models/reservation_summaries_list_result.rb'
    autoload :ReservationDetailsListResult,                       '2018-01-31/generated/azure_mgmt_consumption/models/reservation_details_list_result.rb'
    autoload :BudgetsListResult,                                  '2018-01-31/generated/azure_mgmt_consumption/models/budgets_list_result.rb'
    autoload :PriceSheetProperties,                               '2018-01-31/generated/azure_mgmt_consumption/models/price_sheet_properties.rb'
    autoload :ErrorDetails,                                       '2018-01-31/generated/azure_mgmt_consumption/models/error_details.rb'
    autoload :Resource,                                           '2018-01-31/generated/azure_mgmt_consumption/models/resource.rb'
    autoload :ErrorResponse,                                      '2018-01-31/generated/azure_mgmt_consumption/models/error_response.rb'
    autoload :ProxyResource,                                      '2018-01-31/generated/azure_mgmt_consumption/models/proxy_resource.rb'
    autoload :OperationDisplay,                                   '2018-01-31/generated/azure_mgmt_consumption/models/operation_display.rb'
    autoload :BudgetTimePeriod,                                   '2018-01-31/generated/azure_mgmt_consumption/models/budget_time_period.rb'
    autoload :Operation,                                          '2018-01-31/generated/azure_mgmt_consumption/models/operation.rb'
    autoload :UsageDetail,                                        '2018-01-31/generated/azure_mgmt_consumption/models/usage_detail.rb'
    autoload :Marketplace,                                        '2018-01-31/generated/azure_mgmt_consumption/models/marketplace.rb'
    autoload :ReservationSummaries,                               '2018-01-31/generated/azure_mgmt_consumption/models/reservation_summaries.rb'
    autoload :ReservationDetails,                                 '2018-01-31/generated/azure_mgmt_consumption/models/reservation_details.rb'
    autoload :Budget,                                             '2018-01-31/generated/azure_mgmt_consumption/models/budget.rb'
    autoload :PriceSheetResult,                                   '2018-01-31/generated/azure_mgmt_consumption/models/price_sheet_result.rb'
    autoload :CategoryType,                                       '2018-01-31/generated/azure_mgmt_consumption/models/category_type.rb'
    autoload :TimeGrainType,                                      '2018-01-31/generated/azure_mgmt_consumption/models/time_grain_type.rb'
    autoload :OperatorType,                                       '2018-01-31/generated/azure_mgmt_consumption/models/operator_type.rb'
    autoload :Datagrain,                                          '2018-01-31/generated/azure_mgmt_consumption/models/datagrain.rb'
  end
end

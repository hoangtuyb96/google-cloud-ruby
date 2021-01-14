# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "google/cloud/errors"
require "google/cloud/talent/v4/completion_service_pb"

module Google
  module Cloud
    module Talent
      module V4
        module Completion
          ##
          # Client for the Completion service.
          #
          # A service handles auto completion.
          #
          class Client
            include Paths

            # @private
            attr_reader :completion_stub

            ##
            # Configure the Completion Client class.
            #
            # See {::Google::Cloud::Talent::V4::Completion::Client::Configuration}
            # for a description of the configuration fields.
            #
            # ## Example
            #
            # To modify the configuration for all Completion clients:
            #
            #     ::Google::Cloud::Talent::V4::Completion::Client.configure do |config|
            #       config.timeout = 10.0
            #     end
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def self.configure
              @configure ||= begin
                namespace = ["Google", "Cloud", "Talent", "V4"]
                parent_config = while namespace.any?
                                  parent_name = namespace.join "::"
                                  parent_const = const_get parent_name
                                  break parent_const.configure if parent_const&.respond_to? :configure
                                  namespace.pop
                                end
                default_config = Client::Configuration.new parent_config

                default_config.rpcs.complete_query.timeout = 30.0
                default_config.rpcs.complete_query.retry_policy = {
                  initial_delay: 0.1,
                  max_delay:     60.0,
                  multiplier:    1.3,
                  retry_codes:   [4, 14]
                }

                default_config
              end
              yield @configure if block_given?
              @configure
            end

            ##
            # Configure the Completion Client instance.
            #
            # The configuration is set to the derived mode, meaning that values can be changed,
            # but structural changes (adding new fields, etc.) are not allowed. Structural changes
            # should be made on {Client.configure}.
            #
            # See {::Google::Cloud::Talent::V4::Completion::Client::Configuration}
            # for a description of the configuration fields.
            #
            # @yield [config] Configure the Client client.
            # @yieldparam config [Client::Configuration]
            #
            # @return [Client::Configuration]
            #
            def configure
              yield @config if block_given?
              @config
            end

            ##
            # Create a new Completion client object.
            #
            # ## Examples
            #
            # To create a new Completion client with the default
            # configuration:
            #
            #     client = ::Google::Cloud::Talent::V4::Completion::Client.new
            #
            # To create a new Completion client with a custom
            # configuration:
            #
            #     client = ::Google::Cloud::Talent::V4::Completion::Client.new do |config|
            #       config.timeout = 10.0
            #     end
            #
            # @yield [config] Configure the Completion client.
            # @yieldparam config [Client::Configuration]
            #
            def initialize
              # These require statements are intentionally placed here to initialize
              # the gRPC module only when it's required.
              # See https://github.com/googleapis/toolkit/issues/446
              require "gapic/grpc"
              require "google/cloud/talent/v4/completion_service_services_pb"

              # Create the configuration object
              @config = Configuration.new Client.configure

              # Yield the configuration if needed
              yield @config if block_given?

              # Create credentials
              credentials = @config.credentials
              credentials ||= Credentials.default scope: @config.scope
              if credentials.is_a?(String) || credentials.is_a?(Hash)
                credentials = Credentials.new credentials, scope: @config.scope
              end
              @quota_project_id = @config.quota_project
              @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

              @completion_stub = ::Gapic::ServiceStub.new(
                ::Google::Cloud::Talent::V4::Completion::Stub,
                credentials:  credentials,
                endpoint:     @config.endpoint,
                channel_args: @config.channel_args,
                interceptors: @config.interceptors
              )
            end

            # Service calls

            ##
            # Completes the specified prefix with keyword suggestions.
            # Intended for use by a job search auto-complete search box.
            #
            # @overload complete_query(request, options = nil)
            #   Pass arguments to `complete_query` via a request object, either of type
            #   {::Google::Cloud::Talent::V4::CompleteQueryRequest} or an equivalent Hash.
            #
            #   @param request [::Google::Cloud::Talent::V4::CompleteQueryRequest, ::Hash]
            #     A request object representing the call parameters. Required. To specify no
            #     parameters, or to keep all the default parameter values, pass an empty Hash.
            #   @param options [::Gapic::CallOptions, ::Hash]
            #     Overrides the default settings for this call, e.g, timeout, retries, etc. Optional.
            #
            # @overload complete_query(tenant: nil, query: nil, language_codes: nil, page_size: nil, company: nil, scope: nil, type: nil)
            #   Pass arguments to `complete_query` via keyword arguments. Note that at
            #   least one keyword argument is required. To specify no parameters, or to keep all
            #   the default parameter values, pass an empty Hash as a request object (see above).
            #
            #   @param tenant [::String]
            #     Required. Resource name of tenant the completion is performed within.
            #
            #     The format is "projects/\\{project_id}/tenants/\\{tenant_id}", for example,
            #     "projects/foo/tenants/bar".
            #   @param query [::String]
            #     Required. The query used to generate suggestions.
            #
            #     The maximum number of allowed characters is 255.
            #   @param language_codes [::Array<::String>]
            #     The list of languages of the query. This is
            #     the BCP-47 language code, such as "en-US" or "sr-Latn".
            #     For more information, see
            #     [Tags for Identifying Languages](https://tools.ietf.org/html/bcp47).
            #
            #     The maximum number of allowed characters is 255.
            #   @param page_size [::Integer]
            #     Required. Completion result count.
            #
            #     The maximum allowed page size is 10.
            #   @param company [::String]
            #     If provided, restricts completion to specified company.
            #
            #     The format is
            #     "projects/\\{project_id}/tenants/\\{tenant_id}/companies/\\{company_id}", for
            #     example, "projects/foo/tenants/bar/companies/baz".
            #   @param scope [::Google::Cloud::Talent::V4::CompleteQueryRequest::CompletionScope]
            #     The scope of the completion. The defaults is {::Google::Cloud::Talent::V4::CompleteQueryRequest::CompletionScope::PUBLIC CompletionScope.PUBLIC}.
            #   @param type [::Google::Cloud::Talent::V4::CompleteQueryRequest::CompletionType]
            #     The completion topic. The default is {::Google::Cloud::Talent::V4::CompleteQueryRequest::CompletionType::COMBINED CompletionType.COMBINED}.
            #
            # @yield [response, operation] Access the result along with the RPC operation
            # @yieldparam response [::Google::Cloud::Talent::V4::CompleteQueryResponse]
            # @yieldparam operation [::GRPC::ActiveCall::Operation]
            #
            # @return [::Google::Cloud::Talent::V4::CompleteQueryResponse]
            #
            # @raise [::Google::Cloud::Error] if the RPC is aborted.
            #
            def complete_query request, options = nil
              raise ::ArgumentError, "request must be provided" if request.nil?

              request = ::Gapic::Protobuf.coerce request, to: ::Google::Cloud::Talent::V4::CompleteQueryRequest

              # Converts hash and nil to an options object
              options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

              # Customize the options with defaults
              metadata = @config.rpcs.complete_query.metadata.to_h

              # Set x-goog-api-client and x-goog-user-project headers
              metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
                lib_name: @config.lib_name, lib_version: @config.lib_version,
                gapic_version: ::Google::Cloud::Talent::V4::VERSION
              metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

              header_params = {
                "tenant" => request.tenant
              }
              request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
              metadata[:"x-goog-request-params"] ||= request_params_header

              options.apply_defaults timeout:      @config.rpcs.complete_query.timeout,
                                     metadata:     metadata,
                                     retry_policy: @config.rpcs.complete_query.retry_policy
              options.apply_defaults metadata:     @config.metadata,
                                     retry_policy: @config.retry_policy

              @completion_stub.call_rpc :complete_query, request, options: options do |response, operation|
                yield response, operation if block_given?
                return response
              end
            rescue ::GRPC::BadStatus => e
              raise ::Google::Cloud::Error.from_error(e)
            end

            ##
            # Configuration class for the Completion API.
            #
            # This class represents the configuration for Completion,
            # providing control over timeouts, retry behavior, logging, transport
            # parameters, and other low-level controls. Certain parameters can also be
            # applied individually to specific RPCs. See
            # {::Google::Cloud::Talent::V4::Completion::Client::Configuration::Rpcs}
            # for a list of RPCs that can be configured independently.
            #
            # Configuration can be applied globally to all clients, or to a single client
            # on construction.
            #
            # # Examples
            #
            # To modify the global config, setting the timeout for complete_query
            # to 20 seconds, and all remaining timeouts to 10 seconds:
            #
            #     ::Google::Cloud::Talent::V4::Completion::Client.configure do |config|
            #       config.timeout = 10.0
            #       config.rpcs.complete_query.timeout = 20.0
            #     end
            #
            # To apply the above configuration only to a new client:
            #
            #     client = ::Google::Cloud::Talent::V4::Completion::Client.new do |config|
            #       config.timeout = 10.0
            #       config.rpcs.complete_query.timeout = 20.0
            #     end
            #
            # @!attribute [rw] endpoint
            #   The hostname or hostname:port of the service endpoint.
            #   Defaults to `"jobs.googleapis.com"`.
            #   @return [::String]
            # @!attribute [rw] credentials
            #   Credentials to send with calls. You may provide any of the following types:
            #    *  (`String`) The path to a service account key file in JSON format
            #    *  (`Hash`) A service account key as a Hash
            #    *  (`Google::Auth::Credentials`) A googleauth credentials object
            #       (see the [googleauth docs](https://googleapis.dev/ruby/googleauth/latest/index.html))
            #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
            #       (see the [signet docs](https://googleapis.dev/ruby/signet/latest/Signet/OAuth2/Client.html))
            #    *  (`GRPC::Core::Channel`) a gRPC channel with included credentials
            #    *  (`GRPC::Core::ChannelCredentials`) a gRPC credentails object
            #    *  (`nil`) indicating no credentials
            #   @return [::Object]
            # @!attribute [rw] scope
            #   The OAuth scopes
            #   @return [::Array<::String>]
            # @!attribute [rw] lib_name
            #   The library name as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] lib_version
            #   The library version as recorded in instrumentation and logging
            #   @return [::String]
            # @!attribute [rw] channel_args
            #   Extra parameters passed to the gRPC channel. Note: this is ignored if a
            #   `GRPC::Core::Channel` object is provided as the credential.
            #   @return [::Hash]
            # @!attribute [rw] interceptors
            #   An array of interceptors that are run before calls are executed.
            #   @return [::Array<::GRPC::ClientInterceptor>]
            # @!attribute [rw] timeout
            #   The call timeout in seconds.
            #   @return [::Numeric]
            # @!attribute [rw] metadata
            #   Additional gRPC headers to be sent with the call.
            #   @return [::Hash{::Symbol=>::String}]
            # @!attribute [rw] retry_policy
            #   The retry policy. The value is a hash with the following keys:
            #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #       trigger a retry.
            #   @return [::Hash]
            # @!attribute [rw] quota_project
            #   A separate project against which to charge quota.
            #   @return [::String]
            #
            class Configuration
              extend ::Gapic::Config

              config_attr :endpoint,      "jobs.googleapis.com", ::String
              config_attr :credentials,   nil do |value|
                allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
                allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
                allowed.any? { |klass| klass === value }
              end
              config_attr :scope,         nil, ::String, ::Array, nil
              config_attr :lib_name,      nil, ::String, nil
              config_attr :lib_version,   nil, ::String, nil
              config_attr(:channel_args,  { "grpc.service_config_disable_resolution"=>1 }, ::Hash, nil)
              config_attr :interceptors,  nil, ::Array, nil
              config_attr :timeout,       nil, ::Numeric, nil
              config_attr :metadata,      nil, ::Hash, nil
              config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
              config_attr :quota_project, nil, ::String, nil

              # @private
              def initialize parent_config = nil
                @parent_config = parent_config unless parent_config.nil?

                yield self if block_given?
              end

              ##
              # Configurations for individual RPCs
              # @return [Rpcs]
              #
              def rpcs
                @rpcs ||= begin
                  parent_rpcs = nil
                  parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config&.respond_to?(:rpcs)
                  Rpcs.new parent_rpcs
                end
              end

              ##
              # Configuration RPC class for the Completion API.
              #
              # Includes fields providing the configuration for each RPC in this service.
              # Each configuration object is of type `Gapic::Config::Method` and includes
              # the following configuration fields:
              #
              #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
              #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional gRPC headers
              #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
              #     include the following keys:
              #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
              #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
              #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
              #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
              #         trigger a retry.
              #
              class Rpcs
                ##
                # RPC-specific configuration for `complete_query`
                # @return [::Gapic::Config::Method]
                #
                attr_reader :complete_query

                # @private
                def initialize parent_rpcs = nil
                  complete_query_config = parent_rpcs&.complete_query if parent_rpcs&.respond_to? :complete_query
                  @complete_query = ::Gapic::Config::Method.new complete_query_config

                  yield self if block_given?
                end
              end
            end
          end
        end
      end
    end
  end
end

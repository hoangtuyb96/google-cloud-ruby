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

# Require this file early so that the version constant gets defined before
# requiring "google/cloud". This is because google-cloud-core will load the
# entrypoint (gem name) file, which in turn re-requires this file (hence
# causing a require cycle) unless the version constant is already defined.
require "google/cloud/dialogflow/version"

require "googleauth"
gem "google-cloud-core"
require "google/cloud" unless defined? ::Google::Cloud.new
require "google/cloud/config"

# Set the default configuration
::Google::Cloud.configure.add_config! :dialogflow do |config|
  config.add_field! :endpoint,      "dialogflow.googleapis.com", match: ::String
  config.add_field! :credentials,   nil, match: [::String, ::Hash, ::Google::Auth::Credentials]
  config.add_field! :scope,         nil, match: [::Array, ::String]
  config.add_field! :lib_name,      nil, match: ::String
  config.add_field! :lib_version,   nil, match: ::String
  config.add_field! :interceptors,  nil, match: ::Array
  config.add_field! :timeout,       nil, match: ::Numeric
  config.add_field! :metadata,      nil, match: ::Hash
  config.add_field! :retry_policy,  nil, match: [::Hash, ::Proc]
  config.add_field! :quota_project, nil, match: ::String
end

module Google
  module Cloud
    module Dialogflow
      ##
      # Create a new client object for Agents.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Agents::Client](https://googleapis.dev/ruby/google-cloud-dialogflow-v2/latest/Google/Cloud/Dialogflow/V2/Agents/Client.html)
      # for version V2 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Agents service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Agents
      #
      # Service for managing Agents.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @return [Agents::Client] A client object for the specified version.
      #
      def self.agents version: :v2, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dialogflow.const_get package_name
        package_module.const_get(:Agents).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Contexts.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Contexts::Client](https://googleapis.dev/ruby/google-cloud-dialogflow-v2/latest/Google/Cloud/Dialogflow/V2/Contexts/Client.html)
      # for version V2 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Contexts service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Contexts
      #
      # Service for managing Contexts.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @return [Contexts::Client] A client object for the specified version.
      #
      def self.contexts version: :v2, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dialogflow.const_get package_name
        package_module.const_get(:Contexts).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for EntityTypes.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::EntityTypes::Client](https://googleapis.dev/ruby/google-cloud-dialogflow-v2/latest/Google/Cloud/Dialogflow/V2/EntityTypes/Client.html)
      # for version V2 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the EntityTypes service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About EntityTypes
      #
      # Service for managing EntityTypes.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @return [EntityTypes::Client] A client object for the specified version.
      #
      def self.entity_types version: :v2, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dialogflow.const_get package_name
        package_module.const_get(:EntityTypes).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Environments.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Environments::Client](https://googleapis.dev/ruby/google-cloud-dialogflow-v2/latest/Google/Cloud/Dialogflow/V2/Environments/Client.html)
      # for version V2 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Environments service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Environments
      #
      # Service for managing Environments.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @return [Environments::Client] A client object for the specified version.
      #
      def self.environments version: :v2, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dialogflow.const_get package_name
        package_module.const_get(:Environments).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Intents.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Intents::Client](https://googleapis.dev/ruby/google-cloud-dialogflow-v2/latest/Google/Cloud/Dialogflow/V2/Intents/Client.html)
      # for version V2 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Intents service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Intents
      #
      # Service for managing Intents.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @return [Intents::Client] A client object for the specified version.
      #
      def self.intents version: :v2, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dialogflow.const_get package_name
        package_module.const_get(:Intents).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for SessionEntityTypes.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::SessionEntityTypes::Client](https://googleapis.dev/ruby/google-cloud-dialogflow-v2/latest/Google/Cloud/Dialogflow/V2/SessionEntityTypes/Client.html)
      # for version V2 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the SessionEntityTypes service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About SessionEntityTypes
      #
      # Service for managing SessionEntityTypes.
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @return [SessionEntityTypes::Client] A client object for the specified version.
      #
      def self.session_entity_types version: :v2, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dialogflow.const_get package_name
        package_module.const_get(:SessionEntityTypes).const_get(:Client).new(&block)
      end

      ##
      # Create a new client object for Sessions.
      #
      # By default, this returns an instance of
      # [Google::Cloud::Dialogflow::V2::Sessions::Client](https://googleapis.dev/ruby/google-cloud-dialogflow-v2/latest/Google/Cloud/Dialogflow/V2/Sessions/Client.html)
      # for version V2 of the API.
      # However, you can specify specify a different API version by passing it in the
      # `version` parameter. If the Sessions service is
      # supported by that API version, and the corresponding gem is available, the
      # appropriate versioned client will be returned.
      #
      # ## About Sessions
      #
      # A service used for session interactions.
      #
      # For more information, see the [API interactions
      # guide](https://cloud.google.com/dialogflow/docs/api-overview).
      #
      # @param version [::String, ::Symbol] The API version to connect to. Optional.
      #   Defaults to `:v2`.
      # @return [Sessions::Client] A client object for the specified version.
      #
      def self.sessions version: :v2, &block
        require "google/cloud/dialogflow/#{version.to_s.downcase}"

        package_name = Google::Cloud::Dialogflow
                       .constants
                       .select { |sym| sym.to_s.downcase == version.to_s.downcase.tr("_", "") }
                       .first
        package_module = Google::Cloud::Dialogflow.const_get package_name
        package_module.const_get(:Sessions).const_get(:Client).new(&block)
      end

      ##
      # Configure the google-cloud-dialogflow library.
      #
      # The following configuration parameters are supported:
      #
      # * `credentials` (*type:* `String, Hash, Google::Auth::Credentials`) -
      #   The path to the keyfile as a String, the contents of the keyfile as a
      #   Hash, or a Google::Auth::Credentials object.
      # * `lib_name` (*type:* `String`) -
      #   The library name as recorded in instrumentation and logging.
      # * `lib_version` (*type:* `String`) -
      #   The library version as recorded in instrumentation and logging.
      # * `interceptors` (*type:* `Array<GRPC::ClientInterceptor>`) -
      #   An array of interceptors that are run before calls are executed.
      # * `timeout` (*type:* `Numeric`) -
      #   Default timeout in seconds.
      # * `metadata` (*type:* `Hash{Symbol=>String}`) -
      #   Additional gRPC headers to be sent with the call.
      # * `retry_policy` (*type:* `Hash`) -
      #   The retry policy. The value is a hash with the following keys:
      #     * `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
      #     * `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
      #     * `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
      #     * `:retry_codes` (*type:* `Array<String>`) -
      #       The error codes that should trigger a retry.
      #
      # @return [::Google::Cloud::Config] The default configuration used by this library
      #
      def self.configure
        yield ::Google::Cloud.configure.dialogflow if block_given?

        ::Google::Cloud.configure.dialogflow
      end
    end
  end
end

helper_path = ::File.join __dir__, "dialogflow", "helpers.rb"
require "google/cloud/dialogflow/helpers" if ::File.file? helper_path

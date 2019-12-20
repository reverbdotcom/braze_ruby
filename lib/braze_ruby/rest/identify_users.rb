# frozen_string_literal: true

module BrazeRuby
  module REST
    class IdentifyUsers < Base
      def perform(api_key, aliases_to_identify: [])
        http.post '/users/identify', {
          'api_key':             api_key,
          'aliases_to_identify': aliases_to_identify,
        }
      end
    end
  end
end

require 'httparty'
require 'digest'
require 'openssl'

module Api4Over
  class Organizations

		include HTTParty
    
    def retrieve_organizations(path:, parameters: {}, mode: 'test')
      self.class.base_uri (mode == 'test' ? 'https://sandbox-api.4over.com' : 'https://api.4over.com')
      response = self.class.get(path, parameters)
      response.parsed_response
    end
  end
end

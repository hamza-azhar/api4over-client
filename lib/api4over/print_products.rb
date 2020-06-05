require 'httparty'
require 'digest'
require 'openssl'

module Api4Over
  class PrintProducts

		include HTTParty


    def retrieve_products(path:, parameters: {}, mode: 'test')
      self.class.base_uri (mode == 'test' ? 'https://sandbox-api.4over.com' : 'https://api.4over.com')
      response = self.class.get(path, parameters)
      response.parsed_response
    end

    def retrieve_categories(path:, parameters: {}, mode: 'test')
      self.class.base_uri (mode == 'test' ? 'https://sandbox-api.4over.com' : 'https://api.4over.com')
      response = self.class.get(path, parameters)
      response.parsed_response
    end

    def retrieve_option_groups(path:, parameters: {}, mode: 'test')
      self.class.base_uri (mode == 'test' ? 'https://sandbox-api.4over.com' : 'https://api.4over.com')
      response = self.class.get(path, parameters)
      response.parsed_response
    end

    def retrieve_product_feeds(path:, parameters: {}, mode: 'test')
      self.class.base_uri (mode == 'test' ? 'https://sandbox-api.4over.com' : 'https://api.4over.com')
      response = self.class.get(path, parameters)
      response.parsed_response
    end

    def retrieve_quantity_discounts(path:, parameters: {}, mode: 'test')
      self.class.base_uri (mode == 'test' ? 'https://sandbox-api.4over.com' : 'https://api.4over.com')
      response = self.class.get(path, parameters)
      response.parsed_response
    end
  end
end

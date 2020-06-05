require 'digest'
require 'openssl'

module Api4Over
  class Client
    require 'api4over/print_products'
    
    def initialize(private_key:, public_key:, mode: 'test')
      @api_key = public_key
      @private_key = Digest::SHA256.hexdigest(private_key)
      @signature = OpenSSL::HMAC.hexdigest('sha256', @private_key, "GET")
      @mode = mode
    end

    def get_products(options={})
      Api4Over::PrintProducts.new.retrieve_products(
        path: "/printproducts/products", 
        parameters: build_parameters_for_product(options),
        mode: @mode
      )
    end

    def get_categories(options={})
      Api4Over::PrintProducts.new.retrieve_categories(
        path: "/printproducts/categories", 
        parameters: build_parameters_for_product(options),
        mode: @mode
      )
    end

    def get_option_groups(options={})
      Api4Over::PrintProducts.new.retrieve_option_groups(
        path: "/printproducts/optiongroups", 
        parameters: build_parameters_for_product(options),
        mode: @mode
      )
    end

    def get_product_feeds(options={})
      Api4Over::PrintProducts.new.retrieve_product_feeds(
        path: "/printproducts/productsfeed", 
        parameters: build_parameters_for_product(options),
        mode: @mode
      )
    end

    private

    def build_parameters_for_product(options={})
      default_options = {
       query: 
        { 
          signature: @signature,
          apikey: @api_key 
        }.merge!(options)
      }
      default_options
    end
  end
end

# api4over_client

A Ruby client to access [4overs](https://4over.com/) data from suppliers.

Currently, only interfaces some of the [Product Data](https://api-users.4over.com/?page_id=86) services.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'api4over',  git: 'https://github.com/hamza-azhar/api4over-client'
```

And then execute:

    $ bundle

## Usage

```ruby
require 'api4over'

client = Api4Over::Client.new(
	private_key: 'YOUR PRIVATE KEY',
	public_key: "YOUR PUBLIC KEY",
	mode: "test / live" #optional. Default is 'test'
)

## Print Products

# Get all products
products = client.get_products(options={})

# Get all categories
client.get_categories(options={})

# Get all option groups
client.get_option_groups(options={})

# Get all product feeds
client.get_product_feeds(options={})

# Get all quantity discounts of a product
client.get_quantity_discounts(options={product_uuid: PRODUCT_UUID})

## Organizations

# Get all organizations
organizations = client.get_organizations(options={})

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hamza-azhar/api4over-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.



# product.rb

require 'httparty'
require 'json'

class Product
	url = 'https://fomotograph-api.udacity.com/products.json'
	DATA = HTTParty.get(url)['photos']

	def initialize(product_data = {})
		@id = product_data['id']
		@title = product_data['title']
		@location = product_data['location']
		@summary = product_data['summary']
		@url = product_data['url']
		@price = product_data['price']
	end

	def self.all
		DATA.map { |product| new(product) }
	end

end

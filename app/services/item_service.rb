require 'faraday'
require 'json'

class ItemService
  def self.get_merchants_items(merchant_id)
    response = self.conn.get("/api/v1/merchants/#{merchant_id}/items")
    parse(response)
  end

  private

  def self.conn 
    Faraday.new(url: 'http://localhost:3000/') 
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
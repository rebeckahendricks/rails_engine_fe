require 'rails_helper'

RSpec.describe ItemService do
  context 'class methods' do
    it 'returns merchants items data', :vcr do
      search_data = ItemService.get_merchants_items(99)
      search = search_data[:data][0]

      expect(search).to be_a Hash
      expect(search).to have_key :id
      expect(search[:id].to_i).to be_an Integer

      expect(search[:attributes]).to have_key :name
      expect(search[:attributes][:name]).to be_a String

      expect(search[:attributes]).to have_key :description
      expect(search[:attributes][:description]).to be_a String

      expect(search[:attributes]).to have_key :unit_price
      expect(search[:attributes][:unit_price]).to be_a Float

      expect(search[:attributes]).to have_key :merchant_id
      expect(search[:attributes][:merchant_id]).to be_an Integer
    end
  end
end

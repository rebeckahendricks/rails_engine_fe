require 'rails_helper'

RSpec.describe MerchantService do
  context 'class methods' do
    it 'returns all merchant data', :vcr do
      search = MerchantService.get_merchants
      
      expect(search).to be_a Hash
      expect(search[:data]).to be_an Array

      expect(search[:data][0]).to have_key :id
      expect(search[:data][0][:id].to_i).to be_an Integer

      expect(search[:data][0][:attributes]).to have_key :name
      expect(search[:data][0][:attributes][:name]).to be_a String
    end

    it 'returns a merchant data', :vcr do
      search = MerchantService.get_merchant(42)

      expect(search).to be_a Hash
      expect(search[:data]).to be_a Hash

      expect(search[:data]).to have_key :id
      expect(search[:data][:id].to_i).to be_an Integer

      expect(search[:data][:attributes]).to have_key :name
      expect(search[:data][:attributes][:name]).to be_a String
    end
  end
end
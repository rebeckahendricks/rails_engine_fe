require 'rails_helper'

RSpec.describe Merchant do
  it 'exists' do
    merchant_data = {
      "id": "42",
      "type": "merchant",
      "attributes": {
          "name": "Glover Inc"
      }
    }
    
    merchant = Merchant.new(merchant_data)

    expect(merchant).to be_a Merchant
    expect(merchant.id).to eq(42)
    expect(merchant.name).to eq('Glover Inc')
  end
end

require 'rails_helper'

RSpec.describe Item do
  it 'exists' do
    item_data = {
      "id": "2425",
      "type": "item",
      "attributes": {
          "name": "Item Excepturi Rem",
          "description": "Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.",
          "unit_price": 476.82,
          "merchant_id": 99
      }
    }

    item = Item.new(item_data)

    expect(item).to be_an Item
    expect(item.id).to eq(2425)
    expect(item.name).to eq('Item Excepturi Rem')
    expect(item.description).to eq('Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.')
    expect(item.unit_price).to eq(476.82)
    expect(item.merchant_id).to eq(99)
  end
end
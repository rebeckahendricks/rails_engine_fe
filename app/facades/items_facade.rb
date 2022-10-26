class ItemsFacade
  def self.find_merchants_items(merchant_id)
    items_data = ItemService.get_merchants_items(merchant_id)
    items = items_data[:data]
    items.map do |item|
      Item.new(item)
    end
  end
end

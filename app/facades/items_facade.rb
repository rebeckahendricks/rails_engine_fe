class ItemsFacade
  def self.find_merchants_items(merchant_id)
    items_data = ItemService.get_merchants_items(merchant_id)
    items = items_data[:data]
    items.map do |item|
      Item.new(item)
    end
  end

  def self.find_items
    items_data = ItemService.get_items
    items = items_data[:data]
    items.map do |item|
      Item.new(item)
    end
  end

  def self.find_item(item_id)
    item_data = ItemService.get_item(item_id)
    item = item_data[:data]
    Item.new(item)
  end
end

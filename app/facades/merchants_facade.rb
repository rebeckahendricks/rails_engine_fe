class MerchantsFacade
  def self.find_merchants
    merchants_data = MerchantService.get_merchants
    merchants = merchants_data[:data]
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.find_merchant(merchant_id)
    merchant_data = MerchantService.get_merchant(merchant_id)
    merchant = merchant_data[:data]
    Merchant.new(merchant)
  end
end

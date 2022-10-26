class MerchantsFacade
  def self.find_merchants
    merchants_data = MerchantService.get_merchants
    merchants = merchants_data[:data]
    merchants.map do |merchant|
      Merchant.new(merchant)
    end
  end
end

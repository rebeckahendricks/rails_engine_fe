class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.find_merchants
  end
end

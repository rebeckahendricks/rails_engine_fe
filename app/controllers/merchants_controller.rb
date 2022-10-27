class MerchantsController < ApplicationController
  def index
    @merchants = MerchantsFacade.find_merchants
  end

  def show
    @merchant = MerchantsFacade.find_merchant(params[:id])
    @items = ItemsFacade.find_merchants_items(params[:id])
  end
end

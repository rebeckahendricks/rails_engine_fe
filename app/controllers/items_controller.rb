class ItemsController < ApplicationController
  def index
    @items = ItemsFacade.find_items
  end

  def show
    @item = ItemsFacade.find_item(params[:id])
  end
end
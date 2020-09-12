class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(create_params)
  end

    private
    def create_params
    params.requie(:item).permit(:id, :name, :category, :delivery_cost, :delivery_day, :delivery_origin, :status)
    end
end

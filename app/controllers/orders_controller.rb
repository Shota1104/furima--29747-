class OrdersController < ApplicationController

  def index
    @item = Item.find(params[:item_id])
  end

  def create
  end

  # private
  # def item_params
  #   params.require(:item).permit(:image, :name, :explanation, :category_id, :status_id, :delivery_cost_id, :delivery_origin_id, :delivery_day_id, :price).merge(user_id: current_user.id, item_id: params[:item_id])
  # end

end

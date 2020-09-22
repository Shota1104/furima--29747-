class OrdersController < ApplicationController
  before_action :authenticate_user!

  def index
    @item = Item.find(params[:item_id])
    @order = OrderAddresses.new
    if current_user.id == @item.user_id || @item.order.present? 
      redirect_to root_path
    end
    @order = Order.new 
  end

  def create
    @item = Item.find(params[:item_id])
    @order = OrderAddresses.new(order_params)
    if @order.valid?
      pay_item
      @order.save
      return redirect_to root_path
    else
      render "index"
    end
    
  end

  private

  def order_params
    params.permit(:price, :token, :order_addresses, :item_id, :num, :prefectures_id, :city, :area, :building, :phone,).merge(user_id: current_user.id)
  end

  def pay_item
    Payjp.api_key="sk_test_4da53bb2353267d4d6f308f1"
    Payjp::Charge.create(
      amount: @item.price,
      card: order_params[:token],
      currency:'jpy'
    )
  end

end

class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_item, only:[:index, :create]

  def index
    @order = OrderAddresses.new
    if current_user.id == @item.user_id || @item.order.present? 
      redirect_to root_path
    end
    @order = Order.new 
  end

  def create
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

  def set_item
    @item = Item.find(params[:item_id])
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
    Payjp::Charge.create(
      amount: @item.price,
      card: order_params[:token],
      currency:'jpy'
    )
  end

end

class ItemsController < ApplicationController
before_action :move_to_sign_in, except: [:index]
before_action :set_item, only: [:edit, :show, :update, :destroy]

  def index
    @item = Item.all.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(create_params)
    if @item.save
       redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @item.update!(update_params)
       redirect_to item_path
    else
       render :show
    end
  end

  def destroy
    if @item.delete
       redirect_to root_path
    else
      render :show
    end
  end

  private
  def create_params
    params.required(:item).permit(:image, :name, :explanation, :category_id, :status_id, :delivery_cost_id, :delivery_origin_id, :delivery_day_id, :price).merge(user_id: current_user.id)
  end

  def update_params
    params.required(:item).permit(:image, :name, :explanation, :category_id, :status_id, :delivery_cost_id, :delivery_origin_id, :delivery_day_id, :price).merge(user_id: current_user.id)
  end

  def set_item
    @item = Item.find(params[:id])
  end
    
  def move_to_sign_in
    unless user_signed_in?
      redirect_to new_user_session_path
    end
  end
end

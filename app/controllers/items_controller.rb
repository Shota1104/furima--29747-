class ItemsController < ApplicationController
before_action :move_to_sign_in, except: [:index]

  def index
    @item = Item.all
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

    private
    def create_params
    params.required(:item).permit(:image, :name, :explanation, :category_id, :status_id, :delivery_cost_id, :delivery_origin_id, :delivery_day_id, :price).merge(user_id: current_user.id)
    end

    def move_to_sign_in
      unless user_signed_in?
        redirect_to new_user_session_path
      end
    end
end

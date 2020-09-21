require 'rails_helper'

RSpec.describe Order, type: :model do
  describe '購入機能' do
    before do
      @order = FactoryBot.build(:order)
    end
  end
    context '商品購入がうまくいくとき' do
      it'token, order_addresses, user_id, item_id, num, prefectures_id, city, :area, building, phoneがあれば登録できる' do
        expect(@order).to be_valid
      end
    end

    context '商品購入がうまくいかないとき' do
      it'カード情報の記述に不足があるとき' do
        
      end

      it'郵便番号が空のとき' do
      end

      it'郵便番号にハイフンがないとき' do
      end

      it'都道府県が空のとき' do
      end

      it'市区町村が空のとき' do
      end

      it'番地が空のとき' do
      end

      it'電話番号が空のとき' do
      end

      it'電話番号が11桁以内のとき'do
      end
    end
end

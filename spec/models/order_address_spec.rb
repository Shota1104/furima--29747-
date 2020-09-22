require 'rails_helper'

RSpec.describe OrderAddresses, type: :model do
  describe '購入機能' do
    before do
      buyer = FactoryBot.create(:user)
      seller = FactoryBot.create(:user, email: "sample@gmail.com")
      item = FactoryBot.build(:item, user_id: seller.id)
      item.save
      @order = FactoryBot.build(:order_addresses, user_id: buyer.id, item_id: item.id)
      sleep(1)
    end
  
    context '商品購入がうまくいくとき' do
      it'token, order_addresses, user_id, item_id, num, prefectures_id, city, :area, building, phoneがあれば登録できる' do
        expect(@order).to be_valid
      end
    end

    context '商品購入がうまくいかないとき' do
      it'カード情報の記述に不足があるとき' do
        @order.token = ''
        @order.valid?
        expect(@order.errors.full_messages).to include("Token can't be blank")
      end

      it'郵便番号が空のとき' do
        @order.num = ''
        @order.valid?
        expect(@order.errors.full_messages).to include("Num can't be blank")
      end

      it'郵便番号にハイフンがないとき' do
        @order.num = '1234567'
        @order.valid?
        expect(@order.errors.full_messages).to include("Num is invalid")
      end

      it'都道府県が空のとき' do
        @order.prefectures_id = ''
        @order.valid?
        expect(@order.errors.full_messages).to include("Prefectures can't be blank")
      end

      it'市区町村が空のとき' do
        @order.city = ''
        @order.invalid?
        expect(@order.errors.full_messages).to include("City can't be blank")
      end

      it'番地が空のとき' do
        @order.area = ''
        @order.invalid?
        expect(@order.errors.full_messages).to include("Area can't be blank")
      end

      it'電話番号が空のとき' do
        @order.phone = ''
        @order.invalid?
        expect(@order.errors.full_messages).to include("Phone can't be blank")
      end

      it'電話番号が11桁以上のとき' do
        @order.phone = '12345678901234'
        @order.invalid?
        expect(@order.errors.full_messages).to include("Phone is invalid")
      end

      it'電話番号にハイフンがあるとき' do
        @order.phone = '090-1111'
        @order.invalid?
        expect(@order.errors.full_messages).to include("Phone is invalid")
      end
    end
  end
end

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '商品出品機能' do
    before do
      @item = FactoryBot.build(:item)
    end

    context '商品出品がうまくいくとき' do
      it '画像、商品名、商品説明、カテゴリー、状態、配送料の負担、発送元、日数、価格が入力されていれば登録出来る' do
        expect(@item).to be_valid
      end

      it '金額が300~99999999の範囲内の時に登録出来る' do
        @item.price = "500"
        expect(@item).to be_valid
      end
    end

    context '商品出品がうまくいかないとき' do
      it'画像が空の時' do
       
     end

      it'商品名が空の時' do
      end

      it'商品説明が空の時' do
      end

      it'カテゴリーが空の時' do
      end

      it'状態が空の時' do
      end

      it'配送料の負担が空の時' do
      end

      it'発送元が空の時' do
      end

      it'日数が空の時' do
      end

      it'価格が入力されていない時' do
      end

      it'価格の範囲が300~99999999以外の時' do
      end

      it'販売価格が半角英数以外入力された時' do
      end
    end
end

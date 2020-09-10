require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    context '新規登録がうまくいくとき' do
      FactoryBot.build(:user)
      it "nicknameとemail、passwordとpassword_confirmation、名前と振り仮名、誕生日が存在すれば登録できる" do
      end
      it "passwordが6文字以上であれば登録できる" do
      end
    end

    context '新規登録がうまくいかないとき' do
      FactoryBot.build(:user)
      it "nicknameが空だと登録できない" do
      end
      it "emailが空では登録できない" do
      end
      it "重複したemailが存在する場合登録できない" do
      end
      it "passwordが空では登録できない" do
      end
      it "passwordが5文字以下であれば登録できない" do
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
      end
      it "苗字が空では登録出来ない" do
      end
      it "名前が空では登録出来ない" do
      end
      it "苗字の振り仮名が空では登録出来ない" do
      end
      it "名前の振り仮名が空では登録出来ない" do
      end
      it "誕生日が空では登録出来ない" do
      end
    end
  end
end

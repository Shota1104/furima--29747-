require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'ユーザー新規登録' do
    it '新規登録がうまくいくとき' do
      FactoryBot.build(:user)
      it "nicknameとemail、passwordとpassword_confirmation、名前と振り仮名、誕生日が存在すれば登録できる" do
        expect(@user).to be_valid
      end
      it "passwordが6文字以上であれば登録できる" do
        @user.nickname = "aaaaaa"
        expect(@user).to be_valid
      end
    end

    it '新規登録がうまくいかないとき' do
      FactoryBot.build(:user)
      it "nicknameが空だと登録できない" do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "emailが空では登録できない" do
        @user.email = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "重複したemailが存在する場合登録できない" do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Email has already been taken")
      end
      it "passwordが空では登録できない" do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it "passwordが5文字以下であれば登録できない" do
        @user.password = "00000"
        @user.password_confirmation = "00000"
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
      it "passwordが存在してもpassword_confirmationが空では登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it "苗字が空では登録出来ない" do
        @user.last_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Last_name can't be blank")
      end
      it "名前が空では登録出来ない" do
        @user.first_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("First_name can't be blank")
      end
      it "苗字の振り仮名が空では登録出来ない" do
        @user.kana_last_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Kana_Last_name can't be blank")
      end
      it "名前の振り仮名が空では登録出来ない" do
        @user.kana_first_name = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Kana_First_name can't be blank")
      end
      it "誕生日が空では登録出来ない" do
        @user.birthday = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Birthday can't be blank")
      end
    end
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        #  validates :nickname, :last_name, :first_name, :kana_last_name, :kana_first_name, 
        #  :email, :password, :birthday, presence: true
end

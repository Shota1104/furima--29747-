class Order < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_one :adderss


  with_options presence: true do
  validates :num, format: { with: /\A\d{3}[-]\d{4}\z/ }
  validates :prefectures
  validates :city
  validates :aera
  validates :building
  validates :phone, format: { with: less_than_or_equal_to: 11 }
  
end

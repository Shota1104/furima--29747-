class OrderAddresses

  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :num, :prefectures_id, :city, :area, :building, :phone, :token

  with_options presence: true do
    validates :num, format: { with: /\A\d{3}[-]\d{4}\z/ }
    validates :token
    validates :city
    validates :area
    validates :phone, format: { with: /\A\d{10,11}\z/ }
    validates :prefectures_id, numericality: { other_than: 0 } do
    end  
  end
    def save
      order = Order.create( user_id: user_id, item_id: item_id )
      Address.create( num: num, prefectures_id: prefectures_id, city: city, area: area, building: building, phone: phone, order_id:order.id )
    end

end
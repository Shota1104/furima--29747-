class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :status
  belongs_to_active_hash :delivery_cost
  belongs_to_active_hash :delivery_origin
  belongs_to_active_hash :delivery_day
  has_one_attached :image

  validates :category_id, presence: true
  validates :category_id, numericality: { other_than: 0 }

  validates :status, presence: true
  validates :status_id, numericality: { other_than: 0 }

  validates :delivery_cost_id, presence: true
  validates :delivery_cost_id, numericality: { other_than: 0 }

  validates :delivery_origin_id, presence: true
  validates :delivery_origin_id, numericality: { other_than: 0 }

  validates :delivery_day_id, presence: true
  validates :delivery_day_id, numericality: { other_than: 0 }

 validates_inclusion_of:"price", in: (300..9999999)
end

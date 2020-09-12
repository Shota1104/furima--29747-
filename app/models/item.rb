class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category_id
  belongs_to_active_hash :sattu
  belongs_to_active_hash :delivery_cost_id
  belongs_to_active_hash :delivery_origin_id
  belongs_to_active_hash :delivery_days_id

  validates :title, :text, :category_id, presence: true
  validates :category_id, numericality: { other_than: 1 }

  validates :title, :text, :sattu, presence: true
  validates :sattu_id, numericality: { other_than: 1 }

  validates :title, :text, :delivery_cost_id, presence: true
  validates :delivery_cost_id, numericality: { other_than: 1 }

  validates :title, :text, :delivery_origin_id, presence: true
  validates :delivery_origin_id, numericality: { other_than: 1 }

  validates :title, :text, :delivery_days_id, presence: true
  validates :delivery_days_id, numericality: { other_than: 1 }
end

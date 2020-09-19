class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :num,          null: false
      t.integer :prefectures, null: false
      t.string :city,         null: false
      t.string :area,         null: false
      t.string :building
      t.string :phone,        null: false
      t.references :buyer,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
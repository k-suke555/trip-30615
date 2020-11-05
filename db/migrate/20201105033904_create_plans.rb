class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string  :title,                  null: false
      t.integer :area_id,                null: false
      t.string  :lunch_title,            null: false
      t.text    :lunch_description,      null: false
      t.integer :lunch_type_id,          null: false
      t.integer :lunch_price_id,         null: false
      t.string  :afternoon_title,        null: false
      t.text    :afternoon_description,  null: false
      t.integer :afternoon_type_id,      null: false
      t.integer :afternoon_price_id,     null: false
      t.integer :afternoon_period_id,     null: false
      t.references :user,                foreign_key: true
      t.timestamps
    end
  end
end

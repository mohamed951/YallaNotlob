class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.text :restaurant
      t.text :type
      t.text :status
      t.blob :menu_img
      t.references :user, foreign_key: false
      t.references :order_items, foreign_key: true

      t.timestamps
    end
  end
end
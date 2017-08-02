class CreateOrderProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :order_products do |t|
    	t.string :order_id
    	t.integer :product_id
    	t.integer :numar
      t.timestamps
    end
  end
end

class Orderidstring < ActiveRecord::Migration[5.0]
  def change
  		ActiveRecord::Base.connection.execute("ALTER TABLE order_products ALTER COLUMN order_id TYPE VARCHAR")
  	
  end
end
class Constraints < ActiveRecord::Migration[5.0]
  def change
  		ActiveRecord::Base.connection.execute("ALTER TABLE orders ADD column factura_id bigserial")
  	ActiveRecord::Base.connection.execute("ALTER TABLE orders ADD CONSTRAINT unicitate UNIQUE(factura_id)")
  	
  end
end

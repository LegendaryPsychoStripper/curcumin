class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.string :nume
    	t.decimal :pret
    	t.string :cantitate
    	t.integer :stoc
      t.timestamps
    end
  end
end

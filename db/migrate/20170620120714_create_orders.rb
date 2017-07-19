class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
    	t.string :nume
        t.integer :user_id
    	t.string :prenume
    	t.string :email
    	t.string :telefon
    	t.string :tara
    	t.string :judet
    	t.string :oras
    	t.string :codpostal
    	t.text :adresa
    	t.decimal :pret
    	t.text :mesaj
        t.string :stare
        t.string :transport
      t.timestamps
    end
  end
end

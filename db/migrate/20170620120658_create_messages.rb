class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
    	t.integer :user_id
    	t.string :tip
    	t.text :content
    	t.string :nume
    	t.string :email
      t.string :sickness
    	t.string :is_validated
      t.timestamps
    end
  end
end

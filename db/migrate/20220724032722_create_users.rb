class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gov_id_number
      t.string :gov_id_type, null: false

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :gov_id_number, unique: true
  end
end

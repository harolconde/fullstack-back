class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :password
      t.string :email
      t.integer :phone
      t.date :birthdate
      t.string :img
      
      t.timestamps
    end
  end
end

class CreatePrizes < ActiveRecord::Migration[5.2]
  def change
    create_table :prizes do |t|
      t.string :name
      t.bigint :ncoin
      t.string :img

      t.timestamps
    end
  end
end

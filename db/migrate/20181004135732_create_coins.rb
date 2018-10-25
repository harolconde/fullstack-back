class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.bigint :number

      t.timestamps
    end
  end
end

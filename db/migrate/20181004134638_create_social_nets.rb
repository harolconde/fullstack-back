class CreateSocialNets < ActiveRecord::Migration[5.2]
  def change
    create_table :social_nets do |t|
      t.string :name

      t.timestamps
    end
  end
end

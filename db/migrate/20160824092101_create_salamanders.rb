class CreateSalamanders < ActiveRecord::Migration
  def change
    create_table :salamanders do |t|
      t.string :name, null: false
      t.string :description, null: false

      t.timestamps null: false
    end
  end
end

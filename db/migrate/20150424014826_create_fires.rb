class CreateFires < ActiveRecord::Migration
  def change
    create_table :fires do |t|
      t.references :round
      t.integer :x, null: false
      t.integer :y, null: false
      t.boolean :hit
      t.timestamps null: false
    end
  end
end

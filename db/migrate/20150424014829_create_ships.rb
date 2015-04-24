class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.references :game
      t.string :name
      t.integer :start_x
      t.integer :start_y
      t.integer :end_x
      t.integer :end_y
      t.timestamps null: false
    end
  end
end

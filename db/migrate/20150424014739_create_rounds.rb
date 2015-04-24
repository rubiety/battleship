class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :game
      t.integer :fires_count, default: 0, null: false
      t.timestamps null: false
    end
  end
end

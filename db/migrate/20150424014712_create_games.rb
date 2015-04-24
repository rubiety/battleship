class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :rounds_count
      t.timestamps null: false
    end
  end
end

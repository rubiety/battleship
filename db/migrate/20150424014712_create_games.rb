class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :rounds_count, default: 0, null: false
      t.timestamps null: false
    end
  end
end

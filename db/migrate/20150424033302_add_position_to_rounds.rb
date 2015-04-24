class AddPositionToRounds < ActiveRecord::Migration
  def change
    change_table :rounds do |t|
      t.integer :position
    end
  end
end

class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.float :score
      t.integer :player_id

      t.timestamps
    end
  end
end

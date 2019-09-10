class CreatePlayerGames < ActiveRecord::Migration[6.0]
  def change
    create_table :player_games do |t|
      t.references :game
      t.references :player
      t.integer :score
    end
  end
end

class RemoveHighscoreFromGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :highscore
    add_column :games, :game_highscore, :integer
    remove_column :players, :high_score
    add_column :players, :player_highscore, :integer
  end
end

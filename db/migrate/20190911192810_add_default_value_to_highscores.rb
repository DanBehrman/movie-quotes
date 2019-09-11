class AddDefaultValueToHighscores < ActiveRecord::Migration[6.0]
  def change
    change_column :players, :player_highscore, :integer, :default => 0
    change_column :games, :game_highscore, :integer, :default => 0
  end
end

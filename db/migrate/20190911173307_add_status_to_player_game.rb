class AddStatusToPlayerGame < ActiveRecord::Migration[6.0]
  def change
    add_column :player_games, :status, :integer
  end
end

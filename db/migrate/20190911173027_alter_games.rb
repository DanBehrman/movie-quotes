class AlterGames < ActiveRecord::Migration[6.0]
  def change
    remove_column :games, :status
    add_column :games, :highscore, :integer
  end
end

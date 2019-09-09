class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :user_name
      t.string :password_digest
      t.integer :high_score
      t.string :motto
      t.timestamps
    end
  end
end

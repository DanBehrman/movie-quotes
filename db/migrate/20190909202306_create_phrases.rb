class CreatePhrases < ActiveRecord::Migration[6.0]
  def change
    create_table :phrases do |t|
      t.string :text
      t.string :status
      t.timestamps
    end
  end
end

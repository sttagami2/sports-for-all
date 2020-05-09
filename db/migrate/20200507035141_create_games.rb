class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :win_id
      t.integer :lose_id
      t.integer :win_score
      t.integer :lose_score
      t.integer :event_id

      t.timestamps
    end
  end
end

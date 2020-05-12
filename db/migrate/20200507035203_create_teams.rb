class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.integer :event_id
      t.integer :game_id
      t.string :name

      t.timestamps
    end
  end
end

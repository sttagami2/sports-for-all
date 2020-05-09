class CreateTeamDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :team_details do |t|
      t.integer :team_id
      t.integer :participation_id

      t.timestamps
    end
  end
end

class CreateResolutes < ActiveRecord::Migration[5.2]
  def change
    create_table :resolutes do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :status

      t.timestamps
    end
  end
end

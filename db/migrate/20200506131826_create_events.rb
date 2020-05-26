class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :type_id
      t.string :event_name
      t.text :introduction
      t.datetime :start_date
      t.datetime :finish_date
      t.string :place_name
      t.string :address
      t.string :image

      t.timestamps
    end
  end
end

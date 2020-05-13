class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :type_id
      t.string :event_name
      t.text :introduction
      t.date :start_date
      t.date :finish_date
      t.string :place_name
      t.string :address
      t.string :image
      t.datetime :start_time
      t.timestamps
    end
  end
end

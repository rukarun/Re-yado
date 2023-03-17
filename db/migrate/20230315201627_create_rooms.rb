class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.string :room_name
      t.string :room_introduction
      t.integer :price
      t.string :address
      t.string :room_image
      t.integer :user_id
      t.string :keyword

      t.timestamps
    end
  end
end

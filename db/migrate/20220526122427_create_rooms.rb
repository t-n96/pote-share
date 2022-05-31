class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :introduction
      t.bigint :price
      t.string :address
      t.binary :room_image

      t.timestamps
    end
  end
end

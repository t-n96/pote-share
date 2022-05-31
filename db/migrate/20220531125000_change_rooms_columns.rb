class ChangeRoomsColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :room_image, :binary
  end
end

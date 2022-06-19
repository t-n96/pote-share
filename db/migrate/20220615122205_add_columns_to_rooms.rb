class AddColumnsToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :area, :string
    add_column :rooms, :keyword, :string
  end
end

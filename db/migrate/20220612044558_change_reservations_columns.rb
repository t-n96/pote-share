class ChangeReservationsColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :start_date, :datetime
    remove_column :reservations, :end_date, :datetime
    add_column :reservations, :start_date, :date
    add_column :reservations, :end_date, :date
  end
end

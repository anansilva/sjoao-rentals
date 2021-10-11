class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :check_in, null: false
      t.date :check_out, null: false
      t.integer :number_of_adults, null: false, default: 0
      t.integer :number_of_children, null: false, default: 0

      t.timestamps
    end
  end
end

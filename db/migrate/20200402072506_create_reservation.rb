class CreateReservation < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.references :created_by
      t.references :created_for
      t.datetime :begin
      t.datetime :end
    end
  end
end

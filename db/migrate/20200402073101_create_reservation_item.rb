class CreateReservationItem < ActiveRecord::Migration[6.0]
  def change
    create_table :reservation_items do |t|
      t.references :reservation
      t.references :reservable, polymorphic: true
    end
  end
end

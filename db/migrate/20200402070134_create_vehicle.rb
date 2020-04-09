class CreateVehicle < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :name, limit: 20
      t.string :brand, limit: 50
      t.string :path
    end
  end
end

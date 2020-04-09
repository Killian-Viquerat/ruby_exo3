class CreateMaterial < ActiveRecord::Migration[6.0]
  def change
    create_table :materials do |t|
      t.string :name, limit: 50
    end
  end
end

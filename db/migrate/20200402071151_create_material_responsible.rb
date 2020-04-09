class CreateMaterialResponsible < ActiveRecord::Migration[6.0]
  def change
    create_table :material_responsibles do |t|
      t.references :user
      t.references :material
    end
  end
end

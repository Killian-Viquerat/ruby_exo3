class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name, limit: 50
      t.string :mail, limit: 30
    end
  end
end

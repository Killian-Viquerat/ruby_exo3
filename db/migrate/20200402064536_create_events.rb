class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.references :created_by
      t.references :created_for
      t.datetime :begin
      t.datetime :end      
    end
  end
end

class CreateGroupRight < ActiveRecord::Migration[6.0]
  def change
    create_table :group_rights do |t|
      t.references :group
      t.references :reservable, polymorphic: true
    end
  end
end

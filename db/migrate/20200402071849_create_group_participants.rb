class CreateGroupParticipants < ActiveRecord::Migration[6.0]
  def change
    create_table :group_participants do |t|
      t.references :group
      t.references :user
    end
  end
end

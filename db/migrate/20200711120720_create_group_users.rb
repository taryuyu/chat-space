class CreateGroupUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :group_users do |t|
      t.references :group, foreign_key: true
      t.references :user,forign_key: true
      t.timestamps
    end
  end
end

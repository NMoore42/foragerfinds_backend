class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :follower_id
      t.integer :forager_id
      t.boolean :blocked
      t.timestamps
    end
  end
end

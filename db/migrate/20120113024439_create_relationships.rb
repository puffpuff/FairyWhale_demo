class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :rootNode_id
      t.integer :contentNode_id

      t.timestamps
    end
    add_index :relationships, :contentNode_id
    add_index :relationships, :contentNode_id
    add_index :relationships, [:contentNode_id, :contentNode_id], :unique => true
  end
end

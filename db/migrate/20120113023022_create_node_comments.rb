class CreateNodeComments < ActiveRecord::Migration
  def change
    create_table :node_comments do |t|
      t.integer :node_id
      t.integer :comment_id

      t.timestamps
    end
  end
end

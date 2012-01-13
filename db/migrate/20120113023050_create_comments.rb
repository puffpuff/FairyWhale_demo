class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :voteUp
      t.integer :voteDown

      t.timestamps
    end
  end
end

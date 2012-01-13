class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :views
      t.integer :voteUp
      t.integer :voteDown
      t.boolean :root
      t.integer :category_id
      t.integer :type_id

      t.timestamps
    end
  end
end

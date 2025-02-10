class CreateComments2 < ActiveRecord::Migration[7.1]
  def change
    create_table :comments2 do |t|
      t.text :message
      t.text :username
      t.integer :post_id

      t.timestamps
    end
    add_index :comments, :post_id
  end
end

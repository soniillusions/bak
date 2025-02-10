class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.text :message
      t.text :username

      t.timestamps
    end
  end
end

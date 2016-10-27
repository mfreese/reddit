class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :name
      t.integer :vote
      t.text :link

      t.timestamps
    end
  end
end

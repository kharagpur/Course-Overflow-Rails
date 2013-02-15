class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.integer :rating_down
      t.integer :rating_up
      t.string :title
      t.references :content
      t.text :description
      t.references :user

      t.timestamps
    end
    add_index :videos, :content_id
    add_index :videos, :user_id
  end
end

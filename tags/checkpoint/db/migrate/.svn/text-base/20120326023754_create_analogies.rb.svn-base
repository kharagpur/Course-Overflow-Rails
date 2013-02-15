class CreateAnalogies < ActiveRecord::Migration
  def change
    create_table :analogies do |t|
      t.integer :rating_down
      t.integer :rating_up
      t.references :user
      t.text :description
      t.references :content

      t.timestamps
    end
    add_index :analogies, :user_id
    add_index :analogies, :content_id
  end
end

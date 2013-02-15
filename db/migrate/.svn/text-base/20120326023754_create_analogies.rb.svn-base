class CreateAnalogies < ActiveRecord::Migration
  def change
    create_table :analogies do |t|
      t.integer :rating_up, :default => 0
      t.integer :rating_down, :default => 0
      t.references :user
      t.text :description
      t.references :content

      t.timestamps
    end
    add_index :analogies, :user_id
    add_index :analogies, :content_id
  end
end

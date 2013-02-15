class CreateDefinitions < ActiveRecord::Migration
  def change
    create_table :definitions do |t|
      t.references :content
      t.text :description
      t.integer :rating_up
      t.integer :rating_down
      t.references :user
      

      t.timestamps
    end
    add_index :definitions, :content_id
    add_index :definitions, :user_id
  end
end

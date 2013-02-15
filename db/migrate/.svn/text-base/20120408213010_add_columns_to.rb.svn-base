class AddColumnsTo < ActiveRecord::Migration
  def up
     
      add_column :analogies, :topic_id, :integer
      add_column :videos, :topic_id, :integer
      add_column :photos, :topic_id, :integer
      add_column :definitions, :topic_id, :integer
    
    add_index :videos, :topic_id
    add_index :analogies, :topic_id
    add_index :photos, :topic_id
    add_index :definitions, :topic_id
    
  end

  def down
  end
end
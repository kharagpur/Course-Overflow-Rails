class AddUserIdColumnToPhotos < ActiveRecord::Migration
  def up
    add_column :photos, :user_id, :integer
      
    add_index :photos, :user_id
    
  end
  
  def down
    remove_column :photos, :user_id
    remove_index :photos, :user_id
  end
end

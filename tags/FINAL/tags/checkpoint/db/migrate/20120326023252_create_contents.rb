class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title
      t.references :course
      t.text :content_box

      t.timestamps
    end
    add_index :contents, :course_id
  end
end

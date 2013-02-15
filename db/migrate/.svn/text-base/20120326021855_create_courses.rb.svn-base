class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
     
      t.references :department

      t.timestamps
    end
    add_index :courses, :department_id
  end
end

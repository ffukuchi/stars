class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :comment
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end

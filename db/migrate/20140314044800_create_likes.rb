class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :student_id
      t.string :teacher_id

      t.timestamps
    end
  end
end

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :school_id
      t.integer :stars

      t.timestamps
    end
  end
end

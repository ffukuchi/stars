class AddFieldsToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :school, :string
    add_column :teachers, :grade, :string
    add_column :teachers, :subject, :string
    remove_column :teachers, :school_id
    remove_column :teachers, :stars
  end
end

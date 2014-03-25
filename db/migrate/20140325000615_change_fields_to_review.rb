class ChangeFieldsToReview < ActiveRecord::Migration
  def up
    add_column :reviews, :student_id, :integer
  end

  def down
    remove_column :reviews, :student_id
  end
end

class AddFieldToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :teacher_id, :integer
  end
end

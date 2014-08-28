class ChangeFieldsToPost < ActiveRecord::Migration

  def change
    add_column :posts, :like_id, :integer 
    add_column :posts, :stars, :integer 
  end

end

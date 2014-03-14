class ChangeFieldsToPost < ActiveRecord::Migration

  def change
    add_column :posts, :like_id, :intger 
    add_column :posts, :stars, :intger 
  end

end

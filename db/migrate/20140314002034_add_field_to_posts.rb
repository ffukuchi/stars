class AddFieldToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :school, :string
  end
end

class Drop < ActiveRecord::Migration
  def change
    drop_table :schools
    drop_table :likes
    drop_table :posts
  end
end

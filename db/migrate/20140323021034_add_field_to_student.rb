class AddFieldToStudent < ActiveRecord::Migration
  def change
    add_column :students, :email, :string
    add_column :students, :password, :digest
  end
end

class AddNameToUsers < ActiveRecord::Migration
  def change
    #add_column :users, :name, :string, :limit => 32, :null => false
    change_column :users, :name, :string, :limit => 32, :null => false
    add_column :users, :profile, :string, :limit => 32, :null => false
  end
end

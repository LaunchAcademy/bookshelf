class AddRoleToPeople < ActiveRecord::Migration
  def change
    add_column :people, :role, :string, default: "user"
  end
end

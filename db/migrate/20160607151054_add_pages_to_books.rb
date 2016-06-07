class AddPagesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :pages, :integer
  end
end

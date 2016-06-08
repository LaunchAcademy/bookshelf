class AddPagesToBooks < ActiveRecord::Migration
  def change
    add_column :books, :pages, :integer, default: 0
  end
end

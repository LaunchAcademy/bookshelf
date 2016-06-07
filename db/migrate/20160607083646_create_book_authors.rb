class CreateBookAuthors < ActiveRecord::Migration
  def change
    create_table :book_authors do |t|
      t.integer :book_id, null: false
      t.integer :author_id, null: false
    end
  end
end

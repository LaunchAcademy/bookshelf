class Author < ActiveRecord::Base
  has_many :book_authors
  has_many :books, through: :book_authors

  def to_s
    name
  end
end

class Author < ActiveRecord::Base
  has_many :book_authors
  has_many :books, through: :book_authors

  validates :name, uniqueness: true

  def to_s
    name
  end
end

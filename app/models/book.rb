class Book < ActiveRecord::Base
  belongs_to :person

  has_many :book_authors
  has_many :authors, through: :book_authors

  def author
    authors.first
  end

  def to_s
    title
  end
end

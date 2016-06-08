class Book < ActiveRecord::Base
  belongs_to :person

  has_many :book_authors
  has_many :authors, through: :book_authors

  validates :pages,
    numericality: { only_integer: true, greater_than: -1 }

  def author
    authors.first
  end

  def to_s
    title
  end
end

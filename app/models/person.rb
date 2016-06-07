class Person < ActiveRecord::Base
  has_many :books

  validates :name, presence: true

  def to_s
    name
  end
end

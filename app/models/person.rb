class Person < ActiveRecord::Base
  has_many :books

  def to_s
    name
  end
end

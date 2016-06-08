class Person < ActiveRecord::Base
  ROLES = ["user", "moderator", "admin"]

  has_many :books

  validates :name, presence: true

  validates :role, inclusion: { in: ROLES }

  def to_s
    name
  end
end

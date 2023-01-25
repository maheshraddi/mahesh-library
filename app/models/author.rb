class Author < ApplicationRecord
  has_many :books
  validates :author, presence: true, length: {minimum: 5}
end

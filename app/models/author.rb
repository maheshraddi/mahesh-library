class Author < ApplicationRecord
  has_many :books , dependent: :destroy
  validates :name, presence: true, length: {minimum: 5}
  validates :gender, presence: true
  validates :age, presence: true , numericality: { only_numeric: true }
  validates :experience, presence: true , numericality: { only_numeric: true }
end

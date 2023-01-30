class Book < ApplicationRecord
  belongs_to :author
  belongs_to :library
  validates :title, presence: true, length: {maximum: 20}
  validates :pages, presence: true , numericality: { only_numeric: true }
  validates :launchdate, presence: true
  validates :description, presence: true, length: {minimum: 10, maximum: 100}
end

class Book < ApplicationRecord
  belongs_to :author
  belongs_to :library
  belongs_to :library
  validates :title, presence: true, length: {maximum: 50}
  validates :no_of_pages, presence: true
  validates :publication_date, presence: true
  validates :availability, inclusion: { in: [true, false] }
  validates :summary, presence: true, length: {minimum: 25, maximum: 200}
end

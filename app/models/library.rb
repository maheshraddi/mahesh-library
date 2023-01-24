class Library < ApplicationRecord
  belongs_to :location
  has_many :books
end

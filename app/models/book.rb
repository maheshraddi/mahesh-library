class Book < ApplicationRecord
  belongs_to :library
  has_one :author
end

class Region < ApplicationRecord
  has_many :locations
  belongs_to :company
end

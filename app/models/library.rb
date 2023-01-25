class Library < ApplicationRecord
  belongs_to :location
  belongs_to :company
  has_many :books , dependent: :destroy
  validates :name, presence: true
end

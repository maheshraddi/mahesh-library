class Library < ApplicationRecord
  belongs_to :company
  has_many :library_regions
  has_many :regions, through: :library_regions
  has_many :library_locations
  has_many :locations, through: :library_locations
  has_many :books , dependent: :destroy
  validates :name, presence: true
end

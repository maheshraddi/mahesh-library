class Library < ApplicationRecord
  belongs_to :company
  has_many :library_regions
  has_many :regions, through: :library_regions
  has_many :library_locations
  has_many :locations, through: :library_locations
  has_many :books , dependent: :destroy
  validates :name, presence: true
  validates :company, presence: true
  validate :at_least_one_region
  validate :at_least_one_location

 private

 def at_least_one_region
  errors.add(:regions, "must have at least one region") if regions.empty?
 end

 def at_least_one_location 
  errors.add(:locations, "must have at least one location") if locations.empty?
 end
end 


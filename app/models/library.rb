class Library < ApplicationRecord
  belongs_to :company
  has_many :library_regions
  has_many :regions, through: :library_regions
  has_many :library_locations
  has_many :locations, through: :library_locations
  has_many :books , dependent: :destroy
  validates :name, presence: true
  validates :company, presence: true
  validates :region_ids, presence: true
  validates :location_ids, presence: true

end

#   validate :region_and_location_presence

#   def region_and_location_presence
#     errors.add(:regions, "must select at least one ") if regions.empty?
#     errors.add(:locations, "must select at least one ") if locations.empty?
#   end
# end

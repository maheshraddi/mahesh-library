class Location < ApplicationRecord
  belongs_to :region
  has_one :library , dependent: :destroy
  validates :name, presence: true
end

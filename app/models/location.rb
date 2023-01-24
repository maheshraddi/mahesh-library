class Location < ApplicationRecord
  belongs_to :region
  has_one :library
end

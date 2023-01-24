class Location < ApplicationRecord
  belongs_to :region
  has_many :libraries
end

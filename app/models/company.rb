class Company < ApplicationRecord
  has_many :locations
  has_many :libraries, through: :locations
  has_many :regions
end

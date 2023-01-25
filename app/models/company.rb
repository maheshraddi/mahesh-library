class Company < ApplicationRecord
  has_many :libraries, through: :locations
  has_many :regions ,dependent: :destroy
  validates :name , presence: true
  validates :website, presence: true
  validates :state, presence: true
end

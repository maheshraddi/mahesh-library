class Region < ApplicationRecord
  has_many :locations , dependent: :destroy
  belongs_to :company
  validates :name, presence: true
end

class LibraryLocation < ApplicationRecord
    belongs_to :library
    belongs_to :location
end
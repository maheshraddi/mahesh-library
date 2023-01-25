class AddRegionIdToLibrary < ActiveRecord::Migration[7.0]
  def change
        add_reference :libraries, :region, foreign_key: true
  end
end

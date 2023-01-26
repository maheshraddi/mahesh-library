class CreateLibraryLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :library_locations do |t|
      t.integer :library_id
      t.integer :location_id
      t.timestamps
    end
  end
end

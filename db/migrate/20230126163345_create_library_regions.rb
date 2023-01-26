class CreateLibraryRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :library_regions do |t|
      t.integer :library_id
      t.integer :region_id
      t.timestamps
    end
  end
end

class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.string :name
      t.integer :region_id
      t.integer :library_id

      t.timestamps
    end
  end
end

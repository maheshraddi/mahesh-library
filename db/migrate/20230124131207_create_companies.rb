class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :region_id
      t.integer :location_id
      t.integer :library_id
      t.string :website
      t.string :location
      t.timestamps
    end
  end
end

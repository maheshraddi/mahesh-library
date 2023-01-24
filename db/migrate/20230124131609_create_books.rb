class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :author_id
      t.integer :library_id
      t.integer :pages
      t.text :description
      t.date :launchdate

      t.timestamps
    end
  end
end

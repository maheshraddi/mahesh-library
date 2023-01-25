class AddCompanyIdToLibrary < ActiveRecord::Migration[7.0]
  def change
    add_reference :libraries, :company, foreign_key: true
  end
end

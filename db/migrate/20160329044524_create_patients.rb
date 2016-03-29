class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :dob
      t.string :address
      t.string :insurance

      t.timestamps null: false
    end
  end
end

class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.string :prescription
      t.string :quantity
      t.string :fill_date
      t.string :provider
      t.string :npi
      t.string :pharmacy_id
      t.string :phone
      t.references :patient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

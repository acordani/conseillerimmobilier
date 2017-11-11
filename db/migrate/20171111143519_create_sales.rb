class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer :price
      t.string :title
      t.text :description
      t.string :city
      t.boolean :active
      t.integer :bedroom
      t.string :class_energy
      t.string :zip_code
      t.string :living
      t.string :number_class_energy
      t.string :gaz_serre
      t.string :number_gaz_serre
      t.string :taxe
      t.string :exposition
      t.string :heating
      t.string :phase

      t.timestamps
    end
  end
end

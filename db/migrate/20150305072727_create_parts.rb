class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.integer :wo_number
      t.integer :part_number
      t.text :part_description
      t.decimal :unit_price
      t.integer :unit_quantity
      t.decimal :parts_total
      t.references :equipment, index: true

      t.timestamps
    end
  end
end

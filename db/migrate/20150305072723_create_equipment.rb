class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :equip_id
      t.string :model
      t.string :purchase_date
      t.text :description

      t.timestamps
    end
  end
end

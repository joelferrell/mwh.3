class CreateMileages < ActiveRecord::Migration
  def change
    create_table :mileages do |t|
      t.integer :starting_mile
      t.integer :ending_mile
      t.decimal :rate
      t.integer :total_miles
      t.decimal :mile_total_cost
      t.references :equipment, index: true

      t.timestamps
    end
  end
end

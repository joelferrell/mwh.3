class CreateWorkOrders < ActiveRecord::Migration
  def change
    create_table :work_orders do |t|
      t.integer :wo_number
      t.datetime :start_date
      t.datetime :comp_date
      t.string :requestor
      t.integer :priority
      t.string :repair_facility
      t.text :repair_type
      t.text :location
      t.text :summary
      t.datetime :est_completion
      t.integer :percent_complete
      t.references :equipment, index: true

      t.timestamps
    end
  end
end

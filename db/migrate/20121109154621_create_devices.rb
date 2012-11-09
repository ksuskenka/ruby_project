class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :Dev_type
      t.string :dev_name
      t.string :department
      t.string :worker
      t.string :invent_number
      t.string :district
      t.string :dev_cost
      t.string :date_intr
      t.string :date_of_introduce
      t.boolean :object_operation
      t.string :operation_dat
      t.string :date_kil
      t.string :amortization

      t.timestamps
    end
  end
end

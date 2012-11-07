class CreateUstroystvas < ActiveRecord::Migration
  def change
    create_table :ustroystvas do |t|
      t.string :type
      t.string :name
      t.string :department
      t.string :worker
      t.string :invent_number
      t.string :district
      t.string :cost
      t.date :date_intranse
      t.date :date_of_introduce
      t.boolean :object_operation
      t.date :operation_date
      t.date :date_off
      t.string :amortization

      t.timestamps
    end
  end
end

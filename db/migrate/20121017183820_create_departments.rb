class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :short_name
      t.string :manager

      t.timestamps
    end
  end
end

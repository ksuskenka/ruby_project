class CreateSotrudnikis < ActiveRecord::Migration
  def change
    create_table :sotrudnikis do |t|
      t.integer :tab_number
      t.string :name
      t.string :short_name
      t.string :username
      t.string :email
      t.string :district
      t.string :job
      t.string :adress
      t.string :telephone
      t.boolean :access
      t.string :password

      t.timestamps
    end
  end
  def self.down
    drop_table :sotrudnikis
  end
end

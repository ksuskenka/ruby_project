class AddSaltToSotrudnikis < ActiveRecord::Migration
  def self.up
    add_column :sotrudnikis, :salt, :string
  end

  def self.down
    remove_column :sotrudnikis, :salt
  end
end

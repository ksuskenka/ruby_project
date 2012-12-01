class AddPasswordToSotrudnikis < ActiveRecord::Migration
  def change
    add_column :sotrudnikis, :password, :string
  end
end

class Device < ActiveRecord::Base
belongs_to:sotrudnikis
belongs_to:departments attr_accessible :Dev_type, :amortization, :date_intr, :date_kil, :date_of_introduce, :department, :dev_cost, :dev_name, :district, :invent_number, :object_operation, :operation_dat, :worker
end

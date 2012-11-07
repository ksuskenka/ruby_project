class Ustroystva < ActiveRecord::Base
 belongs_to:sotrudnikis
belongs_to:departments attr_accessible :amortization, :cost, :date_intranse, :date_of_introduce, :date_off, :department, :district, :invent_number, :name, :object_operation, :operation_date, :type, :worker
end

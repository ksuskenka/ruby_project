class Ustroystva < ActiveRecord::Base
 belongs_to:sotrudnikis
belongs_to:departments attr_accessible :amortization_ustroystva, :cost_ustroystva, :date_intranse, :date_of_introduce, :date_off, :department, :district, :invent_number, :name_ustroystva, :object_operation, :operation_date, :type_ustroyastva, :worker
end

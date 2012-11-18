class Department < ActiveRecord::Base
has_many:devices
has_many:sotrudnikis
belongs_to:sotrudnikis
  attr_accessible :manager, :name, :short_name
end

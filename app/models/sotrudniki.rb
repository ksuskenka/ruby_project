class Sotrudniki < ActiveRecord::Base
has_many:devices
has_many:departments
belongs_to:departments
  attr_accessible :access, :adress, :district, :email, :job, :name, :short_name, :tab_number, :telephone, :username
ends

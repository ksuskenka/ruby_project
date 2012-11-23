class Sotrudniki < ActiveRecord::Base
  has_many:devices
  belongs_to:departments
  attr_accessible :access, :adress, :district, :email, :job, :name, :password, :short_name, :tab_number, :telephone, :username
end

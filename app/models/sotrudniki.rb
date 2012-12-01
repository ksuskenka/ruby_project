class Sotrudniki < ActiveRecord::Base
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(submitted_password)
  end

  def self.authenticate_with_salt(tab_number, cookie_salt)
    user = find_by_id(tab_number)
    (user && user.salt == cookie_salt) ? user : nil
  end
  has_many:devices
  belongs_to:departments
  attr_accessible :access, :adress, :district, :email, :job, :name, :password, :short_name, :tab_number, :telephone, :username
end

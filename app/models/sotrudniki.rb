class Sotrudniki < ActiveRecord::Base

  before_save :encrypt_password

  def has_password?(submitted_password)
    password == submitted_password
  end

  private

  def encrypt_password
    self.salt = make_salt if new_record?

  end

  def encrypt(string)
    secure_hash("#{salt}--#{string}")
  end

  def make_salt
    secure_hash("#{Time.now.utc}--#{password}")
  end

  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end
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
  attr_accessible :access, :adress, :district, :email, :job, :name, :password,:salt, :short_name, :tab_number, :telephone, :username
  def worker_name
    "#{name}"
  end
end

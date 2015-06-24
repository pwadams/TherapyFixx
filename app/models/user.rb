class User < ActiveRecord::Base
  has_secure_password
  has_many  :anxiety_scales
  has_many  :stress_logs

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true


def full_name
  "#{first_name} #{last_name}"
end

end

# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  email           :string
#  password_digest :text
#  admin           :boolean          default(FALSE)
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  role            :integer
#

class User < ActiveRecord::Base
  has_secure_password
  has_many :jobs
  has_many :ratings
  has_many :comments
  has_many :applicants

  enum role: [:admin, :employer, :employee]

  def admin?
    self.role == "admin"
  end

  def employer?
    self.role == "employer"
  end

  def employee?
    self.role == "employee"
  end

  def role_c
    self.role.capitalize
  end
end

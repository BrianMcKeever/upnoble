class User < ApplicationRecord
  acts_as_authentic do |c|
    c.session_class = UserSession
    c.login_field = :email
  end
  has_many :articles

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end

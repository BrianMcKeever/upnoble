class User < ApplicationRecord
  acts_as_authentic do |c|
    c.session_class = UserSession
    c.login_field = :email
  end
end

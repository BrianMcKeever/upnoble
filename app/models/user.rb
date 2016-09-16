class User < ApplicationRecord
  acts_as_authentic do |c|
  end
end

class User < ApplicationRecord


  attr_accessor :username, :password
  validates_each :username, :password do |record, attr, value|
    record.errors.add attr, 'starts with z.' if value.to_s[0] == ?z
end

end

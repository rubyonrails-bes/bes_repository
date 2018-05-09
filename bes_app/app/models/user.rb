class User < ApplicationRecord
<<<<<<< HEAD


  attr_accessor :username, :password
  validates_each :username, :password do |record, attr, value|
    record.errors.add attr, 'starts with z.' if value.to_s[0] == ?z
end

=======
	validates_confirmation_of :encrypted_password
	 
  attr_reader :encrypted_password
	attr_accessor :password_confirmation


>>>>>>> 44d4d1d996d17c1f2a6fb06d7c12600ace72f8ad
end

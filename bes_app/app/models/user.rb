class User < ApplicationRecord
	validates_confirmation_of :encrypted_password
	 
  attr_reader :encrypted_password
	attr_accessor :password_confirmation


end

class User < ActiveRecord::Base
	has_secure_password
	validates_presence_of :string
	validates_uniqueness_of :string
	validates_presence_of :password
	validates_presence_of :password_confirmation
	has_many :blogs
end

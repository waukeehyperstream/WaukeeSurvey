class User < ActiveRecord::Base
	attr_accessible :username, :password

	has_many :polls, :dependent => :destroy
	has_many :questions, :dependent => :destroy
	has_many :options, :dependent => :destroy
end

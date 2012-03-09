class Poll < ActiveRecord::Base
	attr_accessible :title
	
	belongs_to :users
	has_many :questions, :dependent => :destroy
	has_many :options, :dependent => :destroy
end

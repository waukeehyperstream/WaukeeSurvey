class Question < ActiveRecord::Base
	attr_accessible :title

	belongs_to :polls
	has_many :options, :dependent => :destroy
end

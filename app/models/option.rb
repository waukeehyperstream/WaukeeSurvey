class Option < ActiveRecord::Base
	attr_accessible :title

	belongs_to :questions
end

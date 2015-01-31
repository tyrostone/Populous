class Committee < ActiveRecord::Base
	belongs_to :branch
	belongs_to :level
	has_many :assignments
end

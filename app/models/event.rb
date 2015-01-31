class Event < ActiveRecord::Base
	belongs_to :issue
	belongs_to :user
	belongs_to :representative
	belongs_to :measurement
end

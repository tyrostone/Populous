class Representative < ActiveRecord::Base
	belongs_to :party
	belongs_to :district
	belongs_to :term
	has_many :events
	has_many :contributions
end

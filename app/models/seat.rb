class Seat < ActiveRecord::Base
	belongs_to :district
	belongs_to :level
	belongs_to :cycle
	belongs_to :term
end

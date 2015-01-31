class Assignment < ActiveRecord::Base
	belongs_to :committee
	belongs_to :term
end

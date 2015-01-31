class Issue < ActiveRecord::Base
	has_many :events
	has_many :contributions
end

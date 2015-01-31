class Measurement < ActiveRecord::Base
	has_many :events
end

class Term < ActiveRecord::Base
	has_many :representatives
	has_many :seats
	has_many :assignments
end

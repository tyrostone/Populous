class Level < ActiveRecord::Base
	has_many :districts
	has_many :seats
	has_many :committees
end

class District < ActiveRecord::Base
	belongs_to :level
	has_many :seats
	has_many :representatives
end

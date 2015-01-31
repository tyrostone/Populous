class Party < ActiveRecord::Base
	belongs_to :country
	has_many :representatives
end

class Contribution < ActiveRecord::Base
	belongs_to :user
	belongs_to :representative
	belongs_to :issue
	has_many :vouchers
end

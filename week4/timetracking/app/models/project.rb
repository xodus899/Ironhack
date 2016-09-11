class Project < ApplicationRecord
	has_many :time_entries

	def self.clean_old
		where("created_at < ?" , 7.days.ago).destroy_all

	end

end

class Capstone < ApplicationRecord
	belongs_to :student

	def as_json
		{
			title: title,
			description: description,
			url: url,
			photo: photo,
			studentID: student_id
		}
	end	
	
end

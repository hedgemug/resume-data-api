class Capstone < ApplicationRecord
	belongs_to :student

	def as_json
		{
			id: id,
			title: title,
			description: description,
			url: url,
			photo: photo,
			studentID: student_id
		}
	end	
	
end

class Experience < ApplicationRecord
	belongs_to :student

	def as_json 
	{
		id: id,
		startDate: start_date,
		endDate: end_date,
		title: title,
		company: company,
		details: details,
		studentID: student_id
	}

	end

end

class Education < ApplicationRecord
	belongs_to :student

  def as_json
    {
      id: id,
      startDate: start_date,
      endDate: end_date,
      degree: degree,
      school: school,
      details: details,
      studentID: student_id
    }
  end
end

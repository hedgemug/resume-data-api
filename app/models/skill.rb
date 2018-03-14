class Skill < ApplicationRecord
	belongs_to :student

  def as_json
    {
    id: id,
    skillName: skill_name,
    studentID: student_id
    }
  end
end

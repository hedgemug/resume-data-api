class Skill < ApplicationRecord
	belongs_to :student

  def as_json
    {
    skillName: skill_name,
    studentID: student_id
    }
  end
end

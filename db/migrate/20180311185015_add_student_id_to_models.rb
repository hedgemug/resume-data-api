class AddStudentIdToModels < ActiveRecord::Migration[5.1]
  def change
  	add_column :educations, :student_id, :integer
  	add_column :skills, :student_id, :integer
  	add_column :capstones, :student_id, :integer
  end
end

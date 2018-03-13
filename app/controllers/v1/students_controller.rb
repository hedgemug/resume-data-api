class V1::StudentsController < ApplicationController
    def index
    students = Student.all
    render json: students.as_json
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student.as_json

    # include: [:educations]
  end

  # def update
  #   student = Student.find_by(id: params[:id])

  #   student.update(
  #     first_name:
  #     )

  #   render json: {message: "You have successfully updated your resume!"}
  # end
end

class V1::StudentsController < ApplicationController
    def index
    students = Student.all
    render json: students.as_json
  end

  def show
    student = Student.find_by(id: params[:id])
    render json: student.as_json
  end

  def update
    student = Student.find_by(id: params[:id])

# Do the params keys need to be in camelCase?
    student.update(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      phone_number: params[:phone_number],
      bio: params[:bio],
      linkedin_url: params[:linkedin_url],
      twitter_handle: params[:twitter_handle],
      website_url: params[:website_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo],
      education: params[:education]
      )

    render json: {message: "You have successfully updated your resume!"}
  end
end

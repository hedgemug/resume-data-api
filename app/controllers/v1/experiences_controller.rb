class V1::ExperiencesController < ApplicationController
	def index
		experiences = Experience.all 
		render json: experiences.as_json
	end

	def show
		experience = Experience.find_by(id: params[:id])
		render json: experience.as_json
	end

	def create
		experience = Experience.new(
			startDate: params[:start_date],
			endDate: params[:end_date],
			title: params[:title],
			company: params[:company],
			details: params[:details],
			studentID: params[:student_id]
			)
		if experience.save
			render json: experience.as_json
		else
			render json: {errors: "There was an error when creating your experience"}
	end

	def update
		experience = Experience.find_by(id: params[:id])
		experience.update(
			startDate: params[:start_date],
			endDate: params[:end_date],
			title: params[:title],
			company: params[:company],
			details: params[:details],
			studentID: params[:student_id]
			)
		render json: {message: "You have updated your experience!"}
	end

	def destroy
		experience = Experience.find_by(params[:id])
		experience.destroy
		render json: {message: "You have deleted your experience"}
	end

end

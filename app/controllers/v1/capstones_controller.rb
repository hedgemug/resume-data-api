class V1::CapstonesController < ApplicationController
	def index
		capstones = Capstone.all
		render json: capstones.as_json
	end

	def show
		capstone = Capstone.find_by(id: params[:id])
		render json: capstone.as_json
	end

	def create
		capstone = Capstone.new(
			title: params[:title],
			description: params[:description],
			url: params[:url],
			photo: params[:photo],
			studentID: params[:student_id]
			)
		if capstone.save
			render json: capstone.as_json
		else
			render json: {errors: "There was an error when creating your capstone"}
		end
	end

	def update
		capstone = Capstone.find_by(id: params[:id])
		capstone.update(
			title: params[:title],
			description: params[:description],
			url: params[:url],
			photo: params[:photo],
			studentID: params[:student_id]
			)

		render json: {message: "You have updated your capstone!"}
	end

	def destroy
		capstone = Capstone.find_by(id: params[:id])
		capstone.destroy
		render json: {message: "You have successfully deleted this capstone"}
	end

end

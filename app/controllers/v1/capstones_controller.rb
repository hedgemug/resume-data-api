class V1::CapstonesController < ApplicationController
	def index
		capstones = Capstone.all
		render json: capstones.as_json
	end

	def show
		capstone = Capstone.find(params[:id])
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

	end

	def destroy
		capstone = Capstone.find(params[:id])
		capstone.destroy
		render json: {message: "You have successfully deleted this capstone"}
	end

end

class V1::SkillsController < ApplicationController
  def index
    skills = Skill.where(student_id: params[:student_id])

    render json: 
  end

  def show
  end

  def create
end

class V1::SkillsController < ApplicationController

  def create
    skill = Skill.create(skill_name: params[:skill_name], student_id: current_user.id)
  end

  def update
    skill = Skill.find_by(id: id)
    skill.update(skill_name: params[:skill_name])
  end

  def destroy
    skill = Skill.find_by(id: id)
    skill.delete
  end
end

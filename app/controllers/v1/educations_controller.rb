class V1::EducationsController < ApplicationController

  def create
    education = Education.create(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      school: params[:school],
      details: params[:details],
      student_id: current_user.id
    )

  end

  def update
    education = Education.find_by(id: params[:id])
    Education.update(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      school: params[:school],
      details: params[:details]
    )
  end

  def destroy
    education = Education.find_by(id: params[:id])
    education.delete
  end
end

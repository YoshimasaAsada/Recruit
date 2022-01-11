class InterviewPracticesController < ApplicationController
  def create
    interview = Interview.find(params[:interview_id])
    interview_practice = current_user.interview_practices.new(interview_id: interview.id)
    interview_practice.save
    redirect_to request.referer
  end

  def destroy
    interview = Interview.find(params[:interview_id])
    interview_practice = current_user.interview_practices.find_by(interview_id: interview.id)
    interview_practice.destroy
    redirect_to request.referer
  end

  def practice_do
    @practices = InterviewPractice.where(user_id: current_user)
  end

  def destroy_all
    InterviewPractice.where(user_id: current_user).destroy_all
    redirect_to interviews_practice_path
  end


end

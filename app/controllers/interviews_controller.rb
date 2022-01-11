class InterviewsController < ApplicationController
  before_action :authenticate_user!

  def index
    @interviews = Interview.all
    @interview_new = Interview.new
  end

  def show
    @favorites = Favorite.where(user_id: current_user)
    # @favorites = Favorite.where(user_id: current_user.id).pluck(:interview_id)
    # @favorite_interviews = Interview.find(@favorites)
  end

  def create
    @interview_new = Interview.new(interview_params)
    @interview_new.save
    redirect_to interviews_path
  end

  def practice
    @favorites = Favorite.where(user_id: current_user)
  end

  private

    def interview_params
      params.require(:interview).permit(:title)
    end
end

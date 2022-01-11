class SchedulesController < ApplicationController

  def create
    params[:schedule][:genre] = params[:schedule][:genre].to_i
    @schedule_new = Schedule.new(schedule_params)
    @schedule_new.user_id = current_user.id
    @schedule_new.save
    redirect_to request.referer
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  private

  def schedule_params
    params.require(:schedule).permit(:title, :memo, :genre, :url, :start_time, :end_time)
  end

end

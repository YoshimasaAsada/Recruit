class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @schedule_new = Schedule.new
    @schedules = current_user.schedules.order(start_time: :asc)
    @today_schedules = current_user.schedules.where('start_time BETWEEN ? AND ?', DateTime.now.beginning_of_day, DateTime.now.end_of_day).order(start_time: :asc)
  end
end

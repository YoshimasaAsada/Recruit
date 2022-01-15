class ReviewsController < ApplicationController
  def create
    params[:review][:genre] = params[:review][:genre].to_i
    @review_new = Review.new(review_params)
    @review_new.schedule_id = params[:schedule_id]
    @review_new.save



    # num.times do |num|
    #   @interview = Interview.new
    #   @interview.review_id = @review_new.id
    #   @interview.title = params[:review][:interview + num]
    #   @interview.save
    # end

    redirect_to schedule_review_path(params[:schedule_id], @review_new)
  end

  def new
    @review_new = Review.new
    @schedule = Schedule.find(params[:schedule_id])
  end

  def show
    @review = Review.find(params[:id])
  end

  def index
    @reviews = current_user.reviews
  end

  private

  def review_params
    params.require(:review).permit(:genre, :good_point, :bad_point, :introspection)
  end

  def interview_params
    params.require(:review).permit(:interview0, :interview1, :interview2, :interview3, :interview4, :interview5, :interview6, :interview7, :interview8, :interview9)
  end
end

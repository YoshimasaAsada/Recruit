class ReviewsController < ApplicationController
  def create
    params[:review][:genre] = params[:review][:genre].to_i
    @review_new = Review.new(review_params)
    @review_new.schedule_id = params[:schedule_id]
    @review_new.save
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
end

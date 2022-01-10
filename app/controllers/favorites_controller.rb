class FavoritesController < ApplicationController
  def create
    interview = Interview.find(params[:interview_id])
    favorite = current_user.favorites.new(interview_id: interview.id)
    favorite.save
    redirect_to request.referer
  end

  def destroy
    interview = Interview.find(params[:interview_id])
    favorite = current_user.favorites.find_by(interview_id: interview.id)
    favorite.destroy
    redirect_to request.referer
  end

  def update
    favorite = Favorite.find(params[:id])
    favorite.update(favorite_params)
    redirect_to request.referer
  end

  private

    def favorite_params
      params.require(:favorite).permit(:comment)
    end
end

class GakuchikasController < ApplicationController
  before_action :authenticate_user!

  def create
    @gakuchika_new = Gakuchika.new(gakuchika_params)
    @gakuchika_new.user_id = current_user.id
    @gakuchika_new.save
    redirect_to resumes_path
  end

  def new
    @gakuchika_new = Gakuchika.new
  end

  def update
    @gakuchika = Gakuchika.find(params[:id])
    @gakuchika.update(gakuchika_params)
    redirect_to resumes_path
  end

  private

    def gakuchika_params
      params.require(:gakuchika).permit(:title, :introduction_400, :introduction_500, :introduction_600, :introduction_700, :introduction_800, :introduction_900, :introduction_1000)
    end
end

class AboutMyselvesController < ApplicationController
  before_action :authenticate_user!

  def create
    @about_myself_new = AboutMyself.new(about_myself_params)
    @about_myself_new.user_id = current_user.id
    @about_myself_new.save
    redirect_to resumes_path
  end

  def new
    @about_myself_new = AboutMyself.new
  end

  def update
    @about_myself = AboutMyself.find(params[:id])
    @about_myself.update(about_myself_params)
    redirect_to resumes_path
  end

  private

    def about_myself_params
      params.require(:about_myself).permit(:title, :introduction_400, :introduction_500, :introduction_600, :introduction_700, :introduction_800, :introduction_900, :introduction_1000)
    end
end

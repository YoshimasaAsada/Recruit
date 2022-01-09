class ResumesController < ApplicationController
  before_action :authenticate_user!

  def index
    @gakuchikas = current_user.gakuchikas
    @about_myselves = current_user.about_myselves
  end

  def create
  end

  def update
  end

  def destroy
  end

end

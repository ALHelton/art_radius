class DashboardController < ApplicationController
  def index
    @artist = Artist.find(params[:artist_id])
  end
end
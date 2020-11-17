class VideosController < ApplicationController
  def new
    @video = video.new
  end

  def create
    @video = video.new(video_params)
    @video.user = current_user
    if @video.save
      redirect_to videos_path(@video)
    end
  end

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end
end

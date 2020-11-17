class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @video = Video.new(video_params)
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
    @review = Review.new
  end
end

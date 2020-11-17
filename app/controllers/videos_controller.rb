class VideosController < ApplicationController
  def new
    @video = Video.new
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @video = Video.new(video_params)
    @video.interview = @interview
    if @video.save
      redirect_to interview_video_path(@interview, @video.id)
    else
      render 'new'
    end
  end

  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
    @review = Review.new
  end

private

  def video_params
    params.require(:video).permit(:interview_id)
  end
end

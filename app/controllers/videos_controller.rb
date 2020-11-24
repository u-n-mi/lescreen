class VideosController < ApplicationController

  def index
    @interview = Interview.find(params[:interview_id])
    @videos = Video.all
  end

  def new
    @interview = Interview.find(params[:interview_id])
    @video = Video.new
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @video = Video.new(video_params)
    @video.interview = @interview
    if @video.save
      redirect_to interview_video_path(@interview.id, @video.id)
    else
      render 'new'
    end
  end

  def show
    @interview = Interview.find(params[:interview_id])
    @video = Video.find(params[:id])
    @review = Review.new
  end

  def videos
    @interview = Interview.all
  end

  def send_sms

  @interview = Interview.find(params[:interview])
  SendSms.new(params[:number], params[:link], params[:company], params[:deadline]).send_message
  redirect_to interview_path(@interview), notice: "Success, the invitation was sent! You can now add another phone number..."
  end

private

  def video_params
    params.require(:video).permit(:name)
  end
end


class VideosController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :new , :create, :thank_you]
  def index
    @interview = Interview.find(params[:interview_id])
    @videos = Video.all
  end

  def new
    @interview = Interview.find(params[:interview_id])
    @video = Video.new
    render layout: "mobile"
  end

  def create
    @interview = Interview.find(params[:interview_id])
    @video = Video.new(video_params)
    @video.interview = @interview
    if @video.save
      redirect_to thank_you_path
    else
      render 'new'
    end
  end

  def thank_you
    render layout: 'mobile'
  end

  def show
    @interview = Interview.find(params[:interview_id])
    @video = Video.find(params[:id])
    @review = Review.new
  end

  def video
    @interview = Interview.all
  end

  def send_sms
    @interview = Interview.find(params[:interview])
    SendSms.new(params[:number], params[:link], params[:company], params[:deadline]).send_message
    redirect_to interview_path(@interview), notice: "Success, the invitation was sent! You can now add another phone number..."
  end

private

  def video_params
    params.require(:video).permit(:name, :body, :video)
  end
end


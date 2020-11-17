class InterviewsController < ApplicationController
  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.new(interview_params)
    @interview.user = current_user
    if @interview.save
      redirect_to interviews_path(@interview)
    end
  end

  def show
    @interview = Interview.find(params[:id])
  end

  def index
    @interviews = Interview.all
  end

private

  def interview_params
    params.require(:interview).permit(:open_date, :final_date)
  end
end




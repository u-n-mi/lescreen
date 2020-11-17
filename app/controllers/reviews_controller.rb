class ReviewsController < ApplicationController
  def create
    @interview = Interview.find(params[:interview_id])
    @video = Video.find(params[:video_id])
    @review = Review.new(review_params)
    @review.video = @video
    if @review.save
      redirect_to interview_video_reviews_path(@interview, @video)
    else
      render "videos/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content, :video_id, :interview_id)
  end
end

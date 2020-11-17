class ReviewsController < ApplicationController
    def create
    @video = video.find(params[:video_id])
    @review = Review.new(review_params)
    @review.video = @video
    if @review.save
      redirect_to video_path(@video)
    else
      @review = Review.new
      render "videos/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end

end

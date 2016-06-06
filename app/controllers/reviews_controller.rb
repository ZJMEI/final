class ReviewsController < ApplicationController

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.rating = params[:rating]
    @review.content = params[:content]
    @review.warship_id = params[:warship_id]
    @review.user_id = params[:user_id]
    @review.save
    redirect_to warship_path(params[:warship_id])
  end
end

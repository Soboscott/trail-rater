# frozen_string_literal: true
class ReviewsController < OpenReadController
  before_action :set_review, only: [:show, :index, :destroy]

  # GET /reviews
  def index
    @reviews = Review.all

    render json: @reviews
  end

  # POST /reviews
  def create
    @review = current_user.reviews.build(review_params)

    if @review.save
      render json: @review, status: :created
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end
  # DELETE /reviews/1

  def destroy
    @review.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = current_user.reviews.find(params[:id])
  end

  # Only allow a trusted parameter through.
  def review_params
    params.require(:review).permit(:comment)
  end
  # private :review_params
end

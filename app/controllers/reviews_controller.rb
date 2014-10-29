class ReviewsController < ApplicationController
  def new
    @company = Company.find(params[:id])
  	@review = Review.new
  end

  def create
  	@review = Review.new(review_params)
  	respond_to do |format|
      if @review.save
        format.html { redirect_to @review, notice: 'Review was successfully created.' }
        format.json { render :show, status: :created, location: @review }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def add_response
    @review = Review.find(params[:id])
    respond_to do |format|
      if !@review.update_attributes(params[:response])
        @error='Could not submit response.'
      end
      format.js
    end
  end

  private
	def review_params
    params.require(:review).permit(:user_id, :company_id, :title, :description, :rating_payment, :rating_communication, :rating_expectations, :would_work_with, :id, :response)
  end
end

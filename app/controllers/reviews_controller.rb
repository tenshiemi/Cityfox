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
    @relation = UserCompanyRelation.where(company_id: @review.company.id, user_id: current_user.id)
  end

  def add_response
    @review = Review.find(params[:review][:id])
    if request.xhr?
      @review.update(response: params[:review][:response])
      render json: {res: @review.response}
    end
  end

  def flag_review
    @review = Review.find(params[:id])
    if request.xhr?
      @review.update(flagged: true)
      render json: {res: @review.id}
    end
  end

  def mark_helpful
    @review = Review.find(params[:id])
    if request.xhr?
      @review.increment!(:helpful)
      render json: {res: @review.id}
    end
  end

  def mark_unhelpful
    @review = Review.find(params[:id])
    if request.xhr?
      @review.increment!(:unhelpful)
      render json: {res: @review.id}
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to flagged_reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:user_id, :company_id, :title, :description, :rating_payment, :rating_communication, :rating_expectations, :rating_overall, :would_work_with, :id, :response)
  end
end

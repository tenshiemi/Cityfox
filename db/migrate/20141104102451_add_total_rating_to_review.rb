class AddTotalRatingToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :rating_overall, :integer
  end
end

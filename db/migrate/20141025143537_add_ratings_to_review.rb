class AddRatingsToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :rating_payment, :integer
    add_column :reviews, :rating_communication, :integer
    add_column :reviews, :rating_expectations, :integer
  end
end

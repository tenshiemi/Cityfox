class AddFlaggedToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :flagged, :boolean, :default => false
  end
end

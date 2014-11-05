class AddUsefulnessToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :helpful, :integer, :default => 0
    add_column :reviews, :unhelpful, :integer, :default => 0
  end
end

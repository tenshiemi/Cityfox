class AddIdsToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :user_id, :integer
    add_column :reviews, :company_id, :integer
  end
end

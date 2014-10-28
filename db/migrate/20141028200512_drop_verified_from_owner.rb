class DropVerifiedFromOwner < ActiveRecord::Migration
  def change
  	remove_column :users, :verified
  end
end

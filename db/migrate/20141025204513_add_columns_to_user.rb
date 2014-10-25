class AddColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :verified, :boolean, :default => false
    add_column :users, :company_id, :integer
    add_column :users, :phone, :string
    add_column :users, :role, :string, :default => :normal
  end
end

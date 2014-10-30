class AddVerifiedToUserCompanyRelation < ActiveRecord::Migration
  def change
    add_column :user_company_relations, :verified, :boolean, :default => false
  end
end

class RenameZipToPostalCodeForCompany < ActiveRecord::Migration
  def change
  	rename_column :companies, :zip, :postal_code
  end
end

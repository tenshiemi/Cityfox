class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :country
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end

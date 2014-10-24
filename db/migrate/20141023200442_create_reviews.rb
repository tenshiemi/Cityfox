class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.boolean :would_work_with
      t.text :description
      t.text :response

      t.timestamps
    end
  end
end

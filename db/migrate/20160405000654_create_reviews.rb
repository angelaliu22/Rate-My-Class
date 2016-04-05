class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.datetime :date

      t.timestamps null: false
    end
  end
end

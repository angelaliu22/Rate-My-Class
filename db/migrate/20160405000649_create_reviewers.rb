class CreateReviewers < ActiveRecord::Migration
  def change
    create_table :reviewers do |t|
      t.string :username
      t.string :password
      t.string :major
      t.decimal :year

      t.timestamps null: false
    end
  end
end

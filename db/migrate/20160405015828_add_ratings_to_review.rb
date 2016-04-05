class AddRatingsToReview < ActiveRecord::Migration
  def change
      add_column :reviews, :overall_rating, :string
      add_column :reviews, :helpfulness_rating, :string
      add_column :reviews, :workload_rating, :string
      add_column :reviews, :professor_rating, :string
  end
end

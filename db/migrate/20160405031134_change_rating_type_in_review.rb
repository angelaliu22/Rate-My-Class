class ChangeRatingTypeInReview < ActiveRecord::Migration
  def change
      change_column :reviews, :overall_rating,  :integer
      change_column :reviews, :helpfulness_rating,  :integer
      change_column :reviews, :workload_rating,  :integer
      change_column :reviews, :professor_rating,  :integer
  end
end

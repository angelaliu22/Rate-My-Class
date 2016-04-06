class AddForeignKeys < ActiveRecord::Migration
  def change
      add_column :reviews, :reviewer_id, :integer
      add_column :reviews, :klass_id, :integer
      
      add_column :enrollments, :reviewer_id, :integer
      add_column :enrollments, :school_id, :integer
      
      add_column :professorships, :professor_id, :integer
      add_column :professorships, :school_id, :integer
      
      add_column :klasses, :course_id, :integer
      add_column :klasses, :professor_id, :integer
      
      add_column :courses, :school_id, :integer
  end
end

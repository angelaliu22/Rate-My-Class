class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.date :start_date
      t.date :end_date
      t.string :name
      t.text :description
      t.decimal :units

      t.timestamps null: false
    end
  end
end



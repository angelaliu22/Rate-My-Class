class AddSemesterToKlass < ActiveRecord::Migration
  def change
      add_column :klasses, :semester, :string
  end
end

class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.decimal :year
      t.decimal :enrollment_size

      t.timestamps null: false
    end
  end
end

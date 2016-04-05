class DropEnrollmentsTableWhenItWasEducationRenamed < ActiveRecord::Migration
  def up
      drop_table :enrollments
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end

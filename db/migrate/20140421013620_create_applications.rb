class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :company
      t.string :position
      t.date :applied_on
      t.string :refer
      t.date :found_on

      t.timestamps
    end
  end
end

class AddGotJobToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :got_job, :boolean, :default => false
  end
end

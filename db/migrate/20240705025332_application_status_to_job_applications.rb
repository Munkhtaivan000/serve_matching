class ApplicationStatusToJobApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :job_applications, :location, :string
    add_column :job_applications, :application_status, :text
  end
  
end

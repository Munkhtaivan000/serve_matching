class JobApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :job_applications do  |t|
      t.references  :userid 
      t.integer :application_status 
      t.integer :location
      t.timestamps 
      
    end
    def change
      add_column :

  end
end

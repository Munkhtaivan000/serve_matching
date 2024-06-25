class JobRecruitnebts < ActiveRecord::Migration[6.1]
  def change
    create_table :job_recruitments do  |t|
      t.references :user 
      t.string :title 
      t.text :description 
      t.text :location 
      t.integer :status 
      t.datetime :datetime
      t.datetime :endtime 
      t.timestamps 
    end
  
  end
end

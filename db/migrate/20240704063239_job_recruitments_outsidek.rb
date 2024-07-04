class JobRecruitmentsOutsidek < ActiveRecord::Migration[6.1]
  def change
    add_reference :job_applications, :job_recruitments
  end
end

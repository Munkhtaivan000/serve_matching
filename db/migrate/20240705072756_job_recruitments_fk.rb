class JobRecruitmentsFk < ActiveRecord::Migration[6.1]
  def change
    add_reference :job_applications, :job_recruitment, foreign_key: true
  end
end

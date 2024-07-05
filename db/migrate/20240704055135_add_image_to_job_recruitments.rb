class AddImageToJobRecruitments < ActiveRecord::Migration[6.1]
  def change
    add_column :job_recruitment, :image, :string
  end
end

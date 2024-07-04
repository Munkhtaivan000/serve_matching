class AddImageToJobRecruitments < ActiveRecord::Migration[6.1]
  def change
    add_column :JobRecruitment, :image, :string
  end
end

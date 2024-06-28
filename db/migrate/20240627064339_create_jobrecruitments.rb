class CreateJobrecruitments < ActiveRecord::Migration[6.1]
  def change
    create_table :jobrecruitments do |t|
      t.string :text
      t.timestamps
    end
  end
end

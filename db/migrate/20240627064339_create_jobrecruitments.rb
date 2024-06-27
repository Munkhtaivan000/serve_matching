class CreateJobrecruitments < ActiveRecord::Migration[6.1]
  def change
    create_table :jobrecruitments do |t|

      t.timestamps
    end
  end
end

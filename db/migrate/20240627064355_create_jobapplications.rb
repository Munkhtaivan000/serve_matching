class CreateJobapplications < ActiveRecord::Migration[6.1]
  def change
    create_table :jobapplications do |t|

      t.timestamps
    end
  end
end

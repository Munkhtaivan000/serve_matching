class CreateJobapplications < ActiveRecord::Migration[6.1]
  def change
    create_table :jobapplications do |t|
      t.string :text
      t.timestamps
    end
  end
end

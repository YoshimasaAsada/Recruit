class CreateInterviewPractices < ActiveRecord::Migration[5.2]
  def change
    create_table :interview_practices do |t|
      t.integer :user_id
      t.integer :interview_id

      t.timestamps
    end
  end
end

class CreateInterviews < ActiveRecord::Migration[5.2]
  def change
    create_table :interviews do |t|
      t.integer :review_id
      t.string :title

      t.timestamps
    end
  end
end

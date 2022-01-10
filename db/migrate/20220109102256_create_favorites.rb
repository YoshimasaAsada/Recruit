class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :interview_id
      t.text :comment

      t.timestamps
    end
  end
end

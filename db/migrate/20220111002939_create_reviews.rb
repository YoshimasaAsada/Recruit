class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :schedule_id
      t.integer :genre
      t.text :good_point
      t.text :bad_point
      t.text :introspection


      t.timestamps
    end
  end
end

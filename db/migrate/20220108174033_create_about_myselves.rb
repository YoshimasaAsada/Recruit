class CreateAboutMyselves < ActiveRecord::Migration[5.2]
  def change
    create_table :about_myselves do |t|
      t.integer :user_id
      t.string :title
      t.text :introduction_400
      t.text :introduction_500
      t.text :introduction_600
      t.text :introduction_700
      t.text :introduction_800
      t.text :introduction_900
      t.text :introduction_1000

      t.timestamps
    end
  end
end

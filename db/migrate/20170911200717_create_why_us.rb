class CreateWhyUs < ActiveRecord::Migration[5.0]
  def change
    create_table :why_us do |t|
      t.text :title, null: false
      t.text :titleVn
      t.text :description, null: false
      t.text :descriptionVn
      t.references :about_section, index: true, foreign_key: true, null: false, index: { unique: true }

      t.timestamps null: false
    end
  end
end

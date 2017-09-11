class CreateAwards < ActiveRecord::Migration[5.0]
  def change
    create_table :awards do |t|
      t.text :title, null: false
      t.text :titleVn
      t.text :description, null: false
      t.text :descriptionVn
      t.references :about_section, index: true, foreign_key: true, null: false

      t.timestamps, null: false
    end
  end
end

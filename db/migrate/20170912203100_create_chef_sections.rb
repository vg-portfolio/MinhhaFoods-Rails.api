class CreateChefSections < ActiveRecord::Migration[5.0]
  def change
    create_table :chef_sections do |t|
      t.text :title, null: false
      t.text :titleVn
      t.text :description, null: false
      t.text :descriptionVn
      t.references :user, index: true, foreign_key: true, null: false, index: { unique: true }

      t.timestamps null: false
    end
  end
end

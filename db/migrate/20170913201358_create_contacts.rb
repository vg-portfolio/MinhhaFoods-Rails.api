class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.text :title
      t.text :titleVn
      t.text :description
      t.text :descriptionVn
      t.text :companyName
      t.text :companyNameVn
      t.integer :tel
      t.integer :hotline
      t.integer :fax
      t.text :addess
      t.text :fbLink
      t.references :user, index: true, foreign_key: true, null: false, index: { unique: true }

      t.timestamps null: false
    end
  end
end

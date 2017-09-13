class CreateInquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :inquiries do |t|
      t.text :firstName, null: false
      t.text :lastName, null: false
      t.text :email, null: false, index: { unique: true }
      t.text :message
      t.boolean :seen, default: false

      t.timestamps null: false
    end
  end
end

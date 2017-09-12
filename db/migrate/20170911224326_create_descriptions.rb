class CreateDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :descriptions do |t|
      t.text :body
      t.references :describable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end

class RevisesUniquessInHistoryTable < ActiveRecord::Migration[5.0]
  def change
    remove_reference :histories, :about_section
    add_reference :histories, :about_section, index: true, foreign_key: true, null: false, index: { unique: true }
  end
end

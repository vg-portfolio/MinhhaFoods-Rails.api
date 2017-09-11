class AddsUserReferenceToHistory < ActiveRecord::Migration[5.0]
  def change
    add_reference :histories, :about_section, index: true, foreign_key: true, null: false, unique: true
  end
end

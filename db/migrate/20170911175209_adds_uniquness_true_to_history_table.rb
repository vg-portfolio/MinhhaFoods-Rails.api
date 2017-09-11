class AddsUniqunessTrueToHistoryTable < ActiveRecord::Migration[5.0]
  def change
    add_index :histories, :about_section, unique: true
  end
end

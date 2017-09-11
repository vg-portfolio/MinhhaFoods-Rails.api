class AddsUniqunessTrueToHistoryTable < ActiveRecord::Migration[5.0]
  def change
    remove_reference :histories, :about_section
  end
end

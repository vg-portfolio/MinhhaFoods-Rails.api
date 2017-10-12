class AddsCompanyNameToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :company_name, :text
    remove_column :contacts, :companyNameVn
  end
end

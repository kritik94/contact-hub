class AddReferenceCompanyToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :company
  end
end

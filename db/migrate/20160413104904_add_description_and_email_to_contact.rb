class AddDescriptionAndEmailToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :text, :description
    add_column :contacts, :string, :email
  end
end

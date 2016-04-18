class AddDescriptionAndEmailToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :description, :text
    add_column :contacts, :email, :string
  end
end

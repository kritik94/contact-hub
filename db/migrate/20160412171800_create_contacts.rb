class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :user, index: true

      t.string :name, null: false
      t.string :email
      t.date :birthday
      t.text :description

      t.timestamps null: false
    end
  end
end

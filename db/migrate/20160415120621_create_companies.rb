class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.text :description
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end

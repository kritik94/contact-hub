class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :country
      t.string :city
      t.string :street_address
      t.belongs_to :owner, polymorphic: true
    end
  end
end

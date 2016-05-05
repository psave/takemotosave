class CreatePrimaryAddresses < ActiveRecord::Migration
  def change
    create_table :primary_addresses do |t|
      t.belongs_to :guests, index: true
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :postal_code
      t.string :country

      t.timestamps
    end
  end
end
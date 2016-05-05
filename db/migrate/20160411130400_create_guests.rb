class CreateGuests < ActiveRecord::Migration
  def change
    create_table :guests do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password_digest
      t.string :cell_number
      t.references :guests
      t.boolean :admin, null: false, default: false

      t.timestamps
    end
  end
end
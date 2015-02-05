class CreateEmailAddresses < ActiveRecord::Migration
  def change
    create_table :email_addresses do |t|
    	t.string :email_address
      t.timestamps null: false
    end
  end
end

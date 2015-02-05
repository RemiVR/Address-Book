class AddEmail < ActiveRecord::Migration
  def change
  	add_column :email_addresses, :contact_id, :integer
  end
end

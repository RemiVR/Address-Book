class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
    	t.integer :phone_number
      t.timestamps null: false
    end
  end
end

class CreatePhoneNumbers < ActiveRecord::Migration
  def change
    create_table :phone_numbers do |t|
      t.string :name
      t.integer :country_code
      t.string :number

      t.timestamps
    end
  end
end

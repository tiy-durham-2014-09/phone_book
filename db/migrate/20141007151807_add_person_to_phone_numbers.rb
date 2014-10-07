class AddPersonToPhoneNumbers < ActiveRecord::Migration
  def change
    add_reference :phone_numbers, :person, index: true
  end
end

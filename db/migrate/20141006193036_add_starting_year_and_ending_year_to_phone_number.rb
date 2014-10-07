class AddStartingYearAndEndingYearToPhoneNumber < ActiveRecord::Migration
  def change
    add_column :phone_numbers, :start_year, :integer
    add_column :phone_numbers, :end_year, :integer
  end
end

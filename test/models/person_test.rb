require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  def check_field_is_required(field, valid_value)
    person = Person.new
    assert !person.valid?, "requires #{field}"
    refute person.errors[field].empty?, "#{field} error should occur"

    person.send("#{field}=", valid_value)
    person.valid?
    assert person.errors[field].empty?, "#{field} errors should be gone"
  end

  # test "the truth" do
  #   assert true
  # end

  test "name is required" do
    check_field_is_required(:name, "Sam")
  end
end

class Person < ActiveRecord::Base
  has_many :phone_numbers

  def to_s
    name
  end
end

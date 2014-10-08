class Person < ActiveRecord::Base
  attr_accessor :title
  has_many :phone_numbers

  validates :name, presence: true
  validates :title, presence: true

  def to_s
    name
  end
end

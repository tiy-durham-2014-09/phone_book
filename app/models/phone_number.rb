class PhoneNumber < ActiveRecord::Base
  belongs_to :person

  validates :name, presence: true
  validates :number, presence: true

  validates :start_year, numericality: {allow_nil: true}
  validates :end_year, numericality: {greater_than_or_equal_to: :start_year, allow_nil: true}
end

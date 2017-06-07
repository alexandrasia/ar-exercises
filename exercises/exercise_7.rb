require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_wage, numericality: { greater_than: 40, less_than: 200 }
  validates :store_id, presence: true
end

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
  validate :must_have_mens_or_womens_apparel

  def must_have_mens_or_womens_apparel
    if (!mens_apparel.present? && !womens_apparel.present?)
      errors.add(:mens_or_womens_apparel, "must be present")
    end
  end
end

puts "Please enter a store name"
@store_name = gets.chomp

@store = Store.create(name: @store_name)

puts @store.valid?
puts @store.errors.messages


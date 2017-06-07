require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"


class Store < ActiveRecord::Base
  has_many :employees
end

class Emnployee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Scout", last_name: "Dog", hourly_rate: 80)
@store1.employees.create(first_name: "Phoenix", last_name: "Cat", hourly_rate: 35)
@store2.employees.create(first_name: "Willow", last_name: "Rat", hourly_rate: 40)
@store2.employees.create(first_name: "Buffy", last_name: "Rat", hourly_rate: 40)


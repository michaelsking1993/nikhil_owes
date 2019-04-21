#!/usr/bin/env ruby
require 'Date'

payments_received = [190, 160]
amount_paid = payments_received.inject(&:+)

rent_monthly, utilities_monthly = 1075/2.0, 100/2.0
daily_rent = (rent_monthly + utilities_monthly)*12.0/365

date_arrived = Date.new(2019, 3, 7)
days_passed = Date.today - date_arrived

remaining_balance = (days_passed*daily_rent) - amount_paid

puts "Daily rent per person is: #{daily_rent}"
puts "Nikhil has paid #{amount_paid} dollars. As of today, his remaining balance is #{remaining_balance} dollars."
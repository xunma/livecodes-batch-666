# Write a method which returns the number of days until next Xmas.
require 'date'

def days_until_christmas(date)
  christmas_day = Date.parse('December 25')
  if (christmas_day - date).to_i < 0 # in the case where `date` already passed this year's christmas
    christmas_day = christmas_day.next_year
    # next year is a built-in method for ruby's `Date` object
  end
  return (christmas_day - date).to_i
end

# test
p days_until_christmas(Date.parse('December 27'))
p days_until_christmas(Date.parse('December 27')).class == Integer
p days_until_christmas(Date.parse('December 27')) == 363
p days_until_christmas(Date.today) == 200

require 'yaml'
require 'date'

MONTHS = Date::MONTHNAMES
def check_gender(code)
  code == 1 ? "a man" : "a woman"
end

def check_year_of_birth(code)
  code < 21 ? "20#{code}" : "19#{code}"
end

def check_department(code)
  department_hash = YAML.load_file('data/french_departments.yml')
  return department_hash[code]
end

def check_month(code)
  return Date::MONTHNAMES[code]
end

def french_ssn_info(ssn)
  ssn_data = ssn.match(/([1-2])\s?([0-9]{2})\s?([0][1-9]|[1][0-2])\s?([0-9]{2})\s?(([0-9]{3})\s?){2}([0-9]{2})/)
  return "The number is invalid" if ssn_data == nil
  gender = ssn_data[1].to_i
  yob = ssn_data[2].to_i
  mob = ssn_data[3].to_i
  department = ssn_data[4]
  key = ssn_data[7]

  number = ssn.delete(" ")[0..-3].to_i

  return "The number is invalid" if 97-number % 97 != key.to_i

  gender_string = check_gender(gender)
  year_string = check_year_of_birth(yob)
  department_string = check_department(department)
  month_string = check_month(mob)

  return "#{gender_string}, born in #{month_string}, #{year_string} in #{department_string}."
end

# p ssn_check("1 84 12 76 451 089 46")

#

# expected = "a man, born in December, 1984 in Seine-Maritime."

# write the regex to match the ssn
# .match / make sure to group each piece of regex
# check the key -> math
  # remainder = ssn_without_key % key
  # if key = remainder

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

def valid?(ssn)
  number = ssn.delete(" ")[0..-3].to_i
  97 - number % 97 == ssn[-2..-1].to_i
  # return true or false
end

def french_ssn_info(ssn)
  ssn_pattern = /(?<gender>[1-2])\s?(?<year>[0-9]{2})\s?(?<month>[0][1-9]|[1][0-2])\s?(?<department>[0-9]{2})\s?(([0-9]{3})\s?){2}(?<key>[0-9]{2})/
  ssn_data = ssn.match(ssn_pattern)
  if ssn_data && valid?(ssn)
    gender_string = check_gender(ssn_data[:gender].to_i)
    year_string = check_year_of_birth(ssn_data[:year].to_i)
    department_string = check_department(ssn_data[:department])
    month_string = check_month(ssn_data[:month].to_i)
    return "#{gender_string}, born in #{month_string}, #{year_string} in #{department_string}."
  else
    return "The number is invalid"
  end
end

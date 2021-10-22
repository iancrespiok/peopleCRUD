require 'date'

class Person < ApplicationRecord
  def edad
    yearsDifference = DateTime.now.year - self.birthday.year
    if self.birthday.month > DateTime.now.month
      yearsDifference -= 1
    end
    return yearsDifference
  end
end

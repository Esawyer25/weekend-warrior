
#
# this is the minimum to make those tests work
# def leap_year?(year)
#   div_4 = year%4 == 0
#   return div_4 && year !=1900
# end

#this is a better method to actually test leap years
def leap_year?(year)
  cent_year = true
  if year%100 == 0
    cent_year = year%400 == 0
  end

  div_4 = year%4 == 0
  return div_4 && cent_year

end

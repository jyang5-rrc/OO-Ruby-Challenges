class Year

  def self.leap?(year)
    # simple solution
    return true if year % 4 == 0 && (year % 400 == 0 || year % 100 != 0)
  end
end

# original code
# class Year

#   def self.leap?(year)
#     leap = false
#     if year % 4 == 0
#       if year % 100 == 0
#         if year % 400 == 0
#           leap = true
#         else
#           leap = false
#         end
#       else
#         leap = true
#       end
#     else
#       leap = false
#     end
#     return leap
#   end

# end


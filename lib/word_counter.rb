require('pry')

class String 
  define_method(:word_counter) do |word_to_count| 
    phrase = self 
    letters = phrase.split("")
    counter = 0
    
    letters.delete(".")
    letters.delete(",")
    letters = letters.join("")
    letters= letters.split(" ")
    letters.each() do |letter|
      if letter.include?(word_to_count)
      counter = counter.+(1)
      else
        counter = counter
    end
   end
    counter
  end
end


#   array_length = letters.length()
#      letters.each do |letter|   
#      until counter.==(array_length.+(1))
#           if letter.==(",")
#             letters.delete(",")
#             counter = counter.+(1)
#            elsif letter.== (".")     
#             letters.delete(".")
#             counter = counter.+(1)
#            else 
#              counter = counter.+(1) 
#            end
#       end
#     letters = letters.join("") #u
#     letters = letters.split(" ")
#    letters
#   end
#  end
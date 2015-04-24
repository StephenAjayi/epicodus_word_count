class String 
  define_method(:word_counter) do
    phrase = self 
    words = ""
    words = phrase.split(" ")
  end
end
    
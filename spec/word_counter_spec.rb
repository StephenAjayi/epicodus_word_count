require('rspec')
require('word_counter')

describe('String#word_counter') do 
  it("will allow user input string to be broken up into individual words") do
    expect("I am so very happy, happy, happy to be getting my code review today.".word_counter()).to(eq(["I", "am", "so", "very", "happy,", "happy,", "happy", "to", "be", "getting", "my", "code", "review", "today." ]))
  end
end
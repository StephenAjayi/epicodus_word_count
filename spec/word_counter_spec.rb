require('rspec')
require('word_counter')
require('pry')
describe('String#word_counter') do 
it("will remove punctuation in order to get an accurate word count") do 
    expect(".,".word_counter(".")).to(eq(0))
  end
  it("will allow user input string to be broken up into individual words") do
     expect("I am happy.".word_counter("am")).to(eql((1)))
   end
it("will count how many times a word appears in the string") do
  expect("happy, happy happy".word_counter("happy")).to(eq(3))
  end
end